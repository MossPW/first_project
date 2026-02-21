import 'package:flutter/material.dart';

class AdditionalFormScreen extends StatefulWidget {
  const AdditionalFormScreen({super.key});

  @override
  State<AdditionalFormScreen> createState() => _AdditionalFormScreenState();
}

class _AdditionalFormScreenState extends State<AdditionalFormScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedItem;
  List<String> listCatelog = ['Home', 'IT', 'Pet'];
  bool _isChecked = false;
  bool _isSwitched = false;
  String? _gender = 'Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Additional Form')),
        body: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButtonFormField<String>(
                  decoration:
                      const InputDecoration(labelText: 'Select catelog'),
                  value: _selectedItem,
                  items: listCatelog
                      .map((item) =>
                          DropdownMenuItem(value: item, child: Text(item)))
                      .toList(),
                  onChanged: (value) {
                    _selectedItem = value;
                  },
                  validator: (value) =>
                      value == null ? 'Please select an option' : null,
                ),
                CheckboxListTile(
                  title: const Text('Accept Terms & Conditions'),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Enable Notification'),
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value!;
                    });
                  },
                ),
                Column(children: [
                  Text('Gender'),
                  RadioListTile(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('LGBTQ'),
                    value: 'LGBTQ',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                ]),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
// Process data.
                    }
                  },
                  child: const Text('Save'),
                ),
              ],
            )) //Column
        );
  }
}
