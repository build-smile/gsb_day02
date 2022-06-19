import 'package:flutter/material.dart';

class EditInfoScreen extends StatefulWidget {
  const EditInfoScreen({Key? key}) : super(key: key);

  @override
  State<EditInfoScreen> createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Info'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          child: Column(
            children: [
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
              ),
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(labelText: 'Position'),
                ),
              ),
              ListTile(
                leading: Text('Birthday'),
                title: TextButton(
                  child: Text('choose date'),
                  onPressed: () {},
                ),
              ),
              ListTile(
                  title: ElevatedButton(
                child: Text('submit'),
                onPressed: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
