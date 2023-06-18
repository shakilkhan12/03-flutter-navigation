import "package:drawer_navigation/about_screen.dart";
import "package:drawer_navigation/categories.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                accountName: Text('Shakil Khan'),
                accountEmail: Text('shakilkhan621@gmail.com'),
              ),
              ListTile(
                leading: const Icon(Icons.access_alarm),
                title: const Text('Categories'),
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.verified_user),
                title: const Text('Users'),
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text('Cart'),
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Center(
          child: Text('Navigation Drawer'),
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
              child: const Text('Screen 1'),
            ),
          )
        ],
      ),
    );
  }
}
