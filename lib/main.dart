import 'package:flutter/material.dart';
import 'ui_elements_screen.dart'; // Make sure to import the new screen

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Catalogue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/ui-elements': (context) => UIElementsScreen(),
        // Add other routes here
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Test Catalogue'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          shrinkWrap: true,
          children: <Widget>[
            NavigationCard(
              title: 'UI Elements',
              imagePath: 'assets/ui_elements.png',
              routeName: '/ui-elements',
              color: Colors.blue,
            ),
            NavigationCard(
              title: 'Animations',
              imagePath: 'assets/animations.png',
              routeName: '/animations',
              color: Colors.red,
            ),
            NavigationCard(
              title: 'Concurrency',
              imagePath: 'assets/concurrency.png',
              routeName: '/concurrency',
              color: Colors.green,
            ),
            NavigationCard(
              title: 'Networking',
              imagePath: 'assets/networking.png',
              routeName: '/networking',
              color: Colors.purple,
            ),
            NavigationCard(
              title: 'State Management',
              imagePath: 'assets/state_management.png',
              routeName: '/state-management',
              color: Colors.orange,
            ),
            NavigationCard(
              title: 'Database',
              imagePath: 'assets/database.png',
              routeName: '/database',
              color: Colors.teal,
            ),
            NavigationCard(
              title: 'Forms & Validation',
              imagePath: 'assets/forms_validation.png',
              routeName: '/forms-validation',
              color: Colors.cyan,
            ),
            NavigationCard(
              title: 'Media & Assets',
              imagePath: 'assets/media_assets.png',
              routeName: '/media-assets',
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String routeName;
  final Color color;

  NavigationCard({
    required this.title,
    required this.imagePath,
    required this.routeName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}