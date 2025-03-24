import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_month_flutter/Day4_Provider/userProvider.dart';

class ProviderPlusMinus extends StatefulWidget {
  const ProviderPlusMinus({super.key});

  @override
  State<ProviderPlusMinus> createState() => _ProviderPlusMinusState();
}

class _ProviderPlusMinusState extends State<ProviderPlusMinus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.watch<UserProvider>().number.toString(),
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            context.read<UserProvider>().incrementNumber();
          },
          child: Icon(Icons.add),
          heroTag: 'increment',
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
            context.read<UserProvider>().decrementNumber();
          },
          child: Icon(Icons.remove),
          heroTag: 'decrement',
        )
      ]),
    );
  }
}
