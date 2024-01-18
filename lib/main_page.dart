import 'package:flutter/material.dart';
import 'package:flutter_test_application/custom/constants/colors.dart';
//import 'package:flutter_test_application/pages/wrapper.dart';
import 'package:flutter_test_application/pages/login_page.dart';
import 'package:flutter_test_application/pages/register_page.dart';
import 'package:flutter_test_application/pages/profile_create.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70, //Image radius
                backgroundImage: AssetImage('images/heart_logo.png'),
              ),
              const Text(
                "Fusion Heart",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("Login")),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text("Register")),
              const SizedBox(
                height: 20.0,
              ),
              //ElevatedButton(
                  //onPressed: () {
                    //Navigator.of(context).push(
                      //MaterialPageRoute(builder: (context) => const HomePage()),
                    //);
                  //},
                  //style: ButtonStyle(
                    //backgroundColor: MaterialStateProperty.all(Colors.white),
                    //foregroundColor: MaterialStateProperty.all(Colors.black),
                  //),
                  //child: const Text("Home Page")),
              //const SizedBox(
                //height: 20.0,
              //),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfileCreate()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                 ),
                 child: const Text("ProfileCreate")),
            ],
          ),
        ));
  }
}
