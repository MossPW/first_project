import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  Future<void> fetchData() async {
    try {
      var response =
          await http.get(Uri.parse('http://localhost:3000/products'));
      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        print(jsonList);
//code somthing...
      } else {
        throw Exception("Failed to load products");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> createProduct() async {
    try {
      var response = await http.post(
          Uri.parse("http://localhost:3000/products"),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "name": "iPhone 5s",
            "description": "Apple smartphone",
            "price": 21999.00
          }));
      if (response.statusCode == 201) {
//code somthing...
      } else {
        throw Exception("Failed to load products");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateProduct({dynamic idUpdate = "3b25"}) async {
    try {
      var response = await http.put(
          Uri.parse("http://localhost:3000/products/$idUpdate"),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "name": "iPhone 5 plus",
            "description": "Apple smartphone",
            "price": 34900.00
          }));
      if (response.statusCode == 200) {
//code somthing...
      } else {
        throw Exception("Failed to load products");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteProduct({dynamic idDelete = "3b25"}) async {
    try {
      var response = await http
          .delete(Uri.parse("http://localhost:3000/products/$idDelete"));
      if (response.statusCode == 200) {
//code somthing...
      } else {
        throw Exception("Failed to delete products");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List API')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: fetchData, child: Text('GET')),
            ElevatedButton(onPressed: createProduct, child: Text('POST')),
            ElevatedButton(onPressed: updateProduct, child: Text('PUT')),
            ElevatedButton(onPressed: deleteProduct, child: Text('DELETE'))
          ],
        )));
  }
}
