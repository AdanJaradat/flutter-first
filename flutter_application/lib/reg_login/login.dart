import 'package:flutter/material.dart';
import 'package:flutter_application/reg_login/register.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Form(
              key: _formKey,
              child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Email'), border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Password'),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Login')),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('register new account ?  '),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register()));
                          },
                          child: Text(
                            'Sign UP',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ])),
        ));
  }
}
