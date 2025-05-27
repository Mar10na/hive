import 'package:flutter/material.dart';
//import 'package:hive/newproject/bottom_nav_provider.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pages"),),
      body: Column(children: [],)
    );
  }
}
