
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Login Screen",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Flex(
        mainAxisAlignment: MainAxisAlignment.center,

        direction: Axis.vertical,
      children: [
        Form(
          key: _formKey ,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),),
                    TextFormField(
                      
                    )
                ],
              ),
            ) )
      ],
      ),
    );
  }
}
