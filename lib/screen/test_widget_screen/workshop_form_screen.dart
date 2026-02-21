import 'package:flutter/material.dart';

class WorkshopFormScreen extends StatefulWidget {
  const WorkshopFormScreen({super.key});

  @override
  State<WorkshopFormScreen> createState() => _WorkshopFormScreenState();
}

class _WorkshopFormScreenState extends State<WorkshopFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? _gender = 'Female';
  String? _selectedItem;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workshop Form Screen')),
      body: Form(
          key: _formKey,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                  controller: _fullNameController,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "Please input data";
                  }),
              TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "Please input data";
                  }),
              Column(
                children: [
                  RadioListTile(
                      value: 'Male',
                      title: const Text('Male'),
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() {
                          _gender = value;
                        });
                      }),
                  RadioListTile(
                      value: 'Female',
                      title: const Text('Female'),
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() {
                          _gender = value;
                        });
                      }),
                ],
              ),
              DropdownButtonFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "Please select data";
                  },
                  decoration: const InputDecoration(
                      labelText: 'Provine', border: OutlineInputBorder()),
                  value: _selectedItem,
                  items: ['Bankok', 'Chiang Mai', 'Phuket', 'Khon Kaen']
                      .map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
                  onChanged: (String? value) {
                    _selectedItem = value;
                  }),
              CheckboxListTile(
                  title: const Text('Accept Terms & Conditions'),
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Submit')),
            ],
          ))),
    );
  }
}
