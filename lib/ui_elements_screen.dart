import 'package:flutter/material.dart';

class UIElementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Elements'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          SectionHeader(title: 'Buttons'),
          ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
          TextButton(onPressed: () {}, child: Text('Text Button')),
          OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),

          SectionHeader(title: 'TextFields'),
          TextField(decoration: InputDecoration(labelText: 'Enter text')),

          SectionHeader(title: 'Switches'),
          Switch(value: true, onChanged: (value) {}),

          SectionHeader(title: 'Checkboxes'),
          Checkbox(value: true, onChanged: (value) {}),

          SectionHeader(title: 'Sliders'),
          Slider(value: 0.5, onChanged: (value) {}),

          SectionHeader(title: 'Progress Indicators'),
          CircularProgressIndicator(),
          LinearProgressIndicator(),

          SectionHeader(title: 'Images'),
          Image.network('https://flutter.dev/images/flutter-logo-sharing.png'),

          SectionHeader(title: 'Containers'),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(child: Text('Container')),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}