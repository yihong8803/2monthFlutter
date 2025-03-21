import 'package:flutter/material.dart';

class textField extends StatefulWidget {
  const textField({super.key});

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  bool _secureText = true;
  TextEditingController _nameController = TextEditingController();
  String? _passwordError;
  TextEditingController _passwordController = TextEditingController();
  String? _dropdownValue;
  var _formKey = GlobalKey<FormState>();

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("TextField")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Your IC",
                  labelText: "IC",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                maxLength: 12,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Detailed Description",
                  labelText: "Description",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                  border: UnderlineInputBorder(),
                  fillColor: Colors.grey,
                  filled: true,
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                    errorText: _passwordError,
                    labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: IconButton(
                      icon: Icon(_secureText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined),
                      onPressed: () {
                        setState(
                          () {
                            _secureText = !_secureText;
                          },
                        );
                      },
                    )),
                obscureText: _secureText ? false : true,
                maxLength: 20,
              ),
              SizedBox(height: 16),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 3) {
                      return "Enter at least 3 characters";
                    }
                    return null; // No error
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.security),
                  ),
                ),
              ),
              SizedBox(height: 16),
              DropdownButton(
                items: ["Dash", "Sparky", "Snoo"]
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
                value: _dropdownValue,
                onChanged: dropdownCallback,
                iconSize: 20,
                iconEnabledColor: Colors.green,
                icon: const Icon(Icons.ac_unit_rounded),
                isExpanded: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    bool? isValid = _formKey.currentState?.validate();
                    print("Form Validation: $isValid");
                  },
                  child: Text("Form")),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print("Password: " + _passwordController.text);
                      if (_passwordController.text.length < 3)
                        _passwordError = "Enter at least 3 char";
                      else {
                        _passwordError = null;
                      }
                    });
                  },
                  child: Text("Submit")),
            ],
          ),
        ));
  }
}
