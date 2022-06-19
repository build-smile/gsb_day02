import 'package:flutter/material.dart';
import 'package:gsb_day2/models/Info.dart';

class EditInfoScreen extends StatefulWidget {
  const EditInfoScreen({Key? key}) : super(key: key);

  @override
  State<EditInfoScreen> createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  var _keyform = GlobalKey<FormState>();
  Info info = Info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Info'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: _keyform,
          child: Column(
            children: [
              ListTile(
                title: TextFormField(
                  validator: _validateString,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
              ),
              ListTile(
                title: TextFormField(
                  validator: _validateString,
                  decoration: InputDecoration(labelText: 'Position'),
                ),
              ),
              ListTile(
                leading: Text('Birthday'),
                title: TextButton(
                  child: Text(
                    info.birthday == '' ? 'choose date' : info.birthday,
                  ),
                  onPressed: () {
                    _selectDate();
                  },
                ),
              ),
              ListTile(
                  title: ElevatedButton(
                child: Text('submit'),
                onPressed: _submit,
              ))
            ],
          ),
        ),
      ),
    );
  }

  String? _validateString(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill data';
    }
    return null;
  }

  _submit() {
    if (_keyform.currentState!.validate()) {
      print(true);
    }
  }

  _selectDate() async {
    DateTime firstDate = DateTime(DateTime.now().year - 100);
    DateTime lastDate = DateTime.now();

    DateTime birthday = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: firstDate,
          lastDate: lastDate,
        ) ??
        DateTime.now();

    info.birthday = birthday.toString();
    setState(() {});
  }
}
