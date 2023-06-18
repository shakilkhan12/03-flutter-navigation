import "package:drawer_navigation/home_screen.dart";
import "package:flutter/material.dart";

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});
  static const String id = "about_screen";
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('About Screen'),
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: const Text('Shakil Khan'),
                  );
                }),
          )
        ],
      ),
    );
  }
}
