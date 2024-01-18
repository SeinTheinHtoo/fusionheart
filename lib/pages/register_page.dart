import 'package:flutter/material.dart';
import 'package:flutter_test_application/custom/constants/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                 radius: 70,
                backgroundImage: AssetImage('images/heart_logo.png'),
              ),
              const Text(
                "Fusion Heart",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(labelText: "Enter your username"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(labelText: "Enter your Password"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    ///showDialog<void>(
                       // context: context,
                        //barrierDismissible: false, // user must tap button!
                       // builder: (BuildContext context) {
                         // return AlertDialog(
                          //  title: const Text('You have been registered!'),
                           
                          //  actions: <Widget>[
                            //  TextButton(
                             //   child: const Text('Okay'),
                             //   onPressed: () {
                             //     Navigator.of(context).pop();
                              // },
                             // ),
                           // ],
                         // );
                       // });
                  },
                  style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.white),
                   foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("Register")),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("Back to Main Page"))
            ],
          ),
        ),
      ),
    );
  }
}
