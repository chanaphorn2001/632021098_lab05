import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupSimple = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Lab 05")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controller1,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter Username';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: _controller2,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter Password';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(_controller1.text);
                    print(_controller2.text);
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
