import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day4_Provider/userProvider.dart';
import 'package:provider/provider.dart';

class ProviderHome extends StatelessWidget {
  const ProviderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.watch<UserProvider>().userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )),
    );
  }
}
