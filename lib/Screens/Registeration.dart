import 'package:connect_me/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  static String id = '/Register_new_user';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool male = false ,female = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration:inputdecoration.copyWith(
                          hintText: "Enter your Name",
                        labelText: "Name"
                      ),
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration:inputdecoration.copyWith(
                          hintText: "Age",
                        labelText: 'Age'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text('Male'),
                        Checkbox(value:male, onChanged:(val){
                          setState(() {
                            if(male){
                              male = false;
                              female = true;
                            }
                            else{
                              male = true;
                              female = false;
                            }
                          });
                        }
                        ),
                        Text('Female'),
                        Checkbox(value:female, onChanged:(val){
                          setState(() {
                            if(female){
                              female = false;
                              male = true;
                            }
                            else{
                              female = true;
                              male = false;
                            }
                          });
                        }
                        ),
                      ],
                    ),
                  )
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
            ],
          ),
        ),
      ),
    );
  }
}
