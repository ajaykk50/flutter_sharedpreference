import 'package:flutter/material.dart';
import 'package:flutter_sharedpreference/screen_second.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getData(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),
              ElevatedButton(
                onPressed: () {
                  saveValue();
                },
                child: Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveValue() async {
    final preference = await SharedPreferences.getInstance();
    await preference.setString("value", _controller.text);
  }

  Future<void> getData(BuildContext context) async {
    final preference = await SharedPreferences.getInstance();
    final value = preference.getString("value");
    if (value != null) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return SecondScreen();
      }));
    }
  }
}
