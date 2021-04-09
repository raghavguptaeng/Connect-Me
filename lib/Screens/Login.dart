import 'package:connect_me/Screens/Registeration.dart';
import 'package:connect_me/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = 'login screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('logo.png'),width: 65,height: 65,),
              Text(
                'Connect Me',
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration:inputdecoration.copyWith(
                          hintText: "Enter your Email"
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(decoration: inputdecoration.copyWith(
                      hintText: "Enter your Password",
                      labelText: "Password",
                    ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  child: Text("login".toUpperCase(),
                      style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                  onPressed: () => null),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Register.id);
                },
                child: Text(
                  "Dont have an account? Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
