import 'package:flutter/material.dart';

class SimpleFormScreen extends StatefulWidget {
  const SimpleFormScreen({super.key});

  @override
  State<SimpleFormScreen> createState() => _SimpleFormScreenState();
}

class _SimpleFormScreenState extends State<SimpleFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String strInput = '';
  //TextEditing Controller
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String? _selectedItem;
  List<String> listOption = ['male', 'female'];
  bool _isChecked = false;
  bool _isSwitched = false;
  String? _gender = 'Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Simple Form')),
        body: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                      labelText: 'Gender', border: OutlineInputBorder()),
                  value: _selectedItem,
                  items: ['male', 'female', 'lgbtq', 'other'].map((item) {
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
              SwitchListTile(
                  title: const Text('Enable Notifications'),
                  value: _isSwitched,
                  onChanged: (bool? value) {
                    setState(() {
                      _isSwitched = value!;
                    });
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
                  RadioListTile(
                      value: 'LGBTQ',
                      title: const Text('LGBTQ'),
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() {
                          _gender = value;
                        });
                      })
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // validate ผ่าน
                      setState(() {
                        strInput = "";
                      });
                    } else {
                      // validate ไม่ผ่าน
                      setState(() {
                        strInput = "Form is invalid";
                      });
                    }
                  },
                  child: Text('สมัครสมาชิก')),
            ])));
  }
}
