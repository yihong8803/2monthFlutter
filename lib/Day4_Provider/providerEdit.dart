import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day4_Provider/userProvider.dart';
import 'package:provider/provider.dart';

class ProviderEdit extends StatefulWidget {
  const ProviderEdit({super.key});

  @override
  State<ProviderEdit> createState() => _ProviderEditState();
}

class _ProviderEditState extends State<ProviderEdit> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Username: ",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              Text(
                context.watch<UserProvider>().userName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _name,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: _name.text);
                FocusManager.instance.primaryFocus?.unfocus();
                _name.clear();
              },
              child: Text("Save"))
        ],
      ),
    ));
  }
}
