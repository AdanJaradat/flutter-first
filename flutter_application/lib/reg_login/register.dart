import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign UP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: ListView(
            children: [
              Text(
                'Please provide us with your information in order to create your account',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                key: _formKey,
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text('First Name'),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text('Last Name'),
                                border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Email'), border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Password'),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Confirm password'),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 65),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign UP'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
