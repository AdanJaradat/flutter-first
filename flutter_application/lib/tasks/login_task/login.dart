import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/login_task/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => Home(),
      },
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
  List<Map> users = [
    {'username': 'ahmad', 'password': '123456'},
    {'username': 'mohammad', 'password': '123456'},
    {'username': 'ali', 'password': '123456'},
  ];
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 223, 245),
      body: Container(
        margin: EdgeInsets.fromLTRB(22, 60, 22, 40),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 75),
                  Text(
                    'Login',
                    style: GoogleFonts.shrikhand(
                        fontSize: 30,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 35),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Username can not be empty';
                      }
                    },
                    onSaved: (newValue) {
                      _username.text = newValue!;
                    },
                    decoration: InputDecoration(
                        label: Text(
                          'Username',
                          style: TextStyle(color: Colors.purple.shade900),
                        ),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.purple.shade900,
                        filled: true,
                        fillColor: Colors.purple.shade100,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.purple.shade900))),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password can not be empty';
                      }
                    },
                    onSaved: (newValue) {
                      _password.text = newValue!;
                    },
                    decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: TextStyle(color: Colors.purple.shade900),
                        ),
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Colors.purple.shade900,
                        filled: true,
                        fillColor: Colors.purple.shade100,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.purple.shade900))),
                  ),
                  SizedBox(height: 25),
                  MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        bool isLogged = false;
                        for (var i = 0; i < users.length; i++) {
                          if (users[i]['username'] == _username.text &&
                              users[i]['password'] == _password.text) {
                            isLogged = true;
                            break;
                          }
                        }
                        if (isLogged) {
                          var snackBar = SnackBar(
                            content: Text('Successfully Login'),
                            action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                }),
                          );
                          Navigator.pushNamed(context, 'home',
                              arguments: _username.text);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Home()),
                          // );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          var snackBar = SnackBar(
                            content: Text('Faild Login'),
                            action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                }),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                    },
                    color: Colors.purple.shade900,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
