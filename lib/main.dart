import 'package:connect_me/Screens/Registeration.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/Home.dart';
import 'Screens/Login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  var email = pref.getString('Email');
  runApp((email==null)?Login_scr():main_scr());
}
class Login_scr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Login.id:(context)=>Login(),
        Register.id:(context)=>Register(),
      },
      initialRoute: Login.id,
    );
  }
}class main_scr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.id: (context) => Home()
      },
      initialRoute: Home.id,
    );
  }
}
