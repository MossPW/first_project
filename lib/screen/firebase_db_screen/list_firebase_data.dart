import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListFirebaseData extends StatefulWidget {
  const ListFirebaseData({super.key});

  @override
  State<ListFirebaseData> createState() => _ListFirebaseDataState();
}

class _ListFirebaseDataState extends State<ListFirebaseData> {
  final CollectionReference products =
      FirebaseFirestore.instance.collection('products');

  //CREATE: Add New Data
  Future<void> createProduct(
      String name, String description, double price) async {
    await products.add({
      'name': name,
      'description': description,
      'price': price,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: products.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          final data = snapshot.data!.docs;
          return ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final product = data[index];
              String productId = product.id; // ดึงค่า ID ของเอกสาร
              return ListTile(
                leading: Text(productId),
                title: Text(product['name']),
                subtitle: Text(product['description']),
              );
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            createProduct('Vivo X11', 'Vivo Mobile', 55000);
          },
          child: Text('Insert Data')),
    );
  }
}
