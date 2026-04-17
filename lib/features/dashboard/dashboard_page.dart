import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:second_brain/utils/utils.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({required this.child, super.key});

  ///
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(child: child),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_outlined),
            label: 'Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Favorites',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          return switch (index) {
            0 => context.go('/'),
            1 => context.go('/Note'),
            2 => context.go('/Favorite'),
            _ => context.go('/'),
          };
        },
      ),
    );
  }
}
