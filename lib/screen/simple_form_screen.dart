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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Simple Form')),
        body: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Display input : $strInput'),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    icon: Icon(Icons.person), labelText: 'Username'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกบัญชีผู้ใช้';
                  }
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.key), labelText: 'Password'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาระบุรหัสผ่าน';
                  }
                },
              ),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.key), labelText: 'Confirm password'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาระบุรหัสผ่าน';
                  }
                  if (value != _passwordController.text) {
                    return 'รหัสผ่านไม่ตรงกัน';
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // validate ผ่าน
                      setState(() {
                        strInput =
                            "Username : ${_usernameController.text} Password : ${_passwordController.text}";
                      });
                    } else {
                      // validate ไม่ผ่าน
                      setState(() {
                        strInput = "Form is invalid";
                      });
                    }
                  },
                  child: Text('สมัครสมาชิก')),
              // ElevatedButton(
              //     onPressed: () {
              //       _usernameController.clear();
              //       _passwordController.clear();
              //     },
              //     child: Text('เคลียร์ค่า')),
              // ElevatedButton(
              //     onPressed: () {
              //       _usernameController.text = 'patipan.wat';
              //     },
              //     child: Text('Auto fill'))
            ])));
  }
}
