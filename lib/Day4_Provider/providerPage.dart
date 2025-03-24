import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day4_Provider/providerPlusMinus.dart';
import 'package:two_month_flutter/Day4_Provider/userProvider.dart';
import 'package:provider/provider.dart';
import 'package:two_month_flutter/Day4_Provider/providerEdit.dart';
import 'package:two_month_flutter/Day4_Provider/providerHome.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  final List<Widget> pages = [
    const ProviderHome(),
    const ProviderEdit(),
    const ProviderPlusMinus(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider")),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Edit"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculation")
        ],
      ),
    );
  }
}
