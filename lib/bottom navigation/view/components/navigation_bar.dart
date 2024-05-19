import 'package:adv_flutter_ch2/bottom%20navigation/provider/navigation_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.black12,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: Provider.of<NavigationProvider>(context, listen: true)
            .destinationIndex,
        onDestinationSelected: (value) =>
            Provider.of<NavigationProvider>(context, listen: false)
                .setIndex(value),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.messenger),
            icon: Badge(
              child: Icon(Icons.messenger_outline),
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.heart_fill),
            icon: Icon(CupertinoIcons.heart),
            label: 'Like',
          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.person_fill),
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        const AddPage(
          name: 'Home Page',
        ),
        AddPage(
          name: 'Chats',
        ),
        AddPage(
          name: 'Like',
        ),
        AddPage(
          name: 'Profile',
        ),
      ][Provider.of<NavigationProvider>(context, listen: true)
          .destinationIndex],
    );
  }
}

class AddPage extends StatelessWidget {
  const AddPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
