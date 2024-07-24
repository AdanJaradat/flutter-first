import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String _country = '';
  String _gender = '';
  String username = '',
      fullName = '',
      emal = '',
      passwword = '',
      phone = '',
      birth = '';
  bool isEnable = false, isAgree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Form'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(35),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    username = value!;
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'Username',
                      label: const Text('Username'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    fullName = value!;
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'Full Name',
                      label: const Text('Full Name'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    emal = value!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      hintText: 'Email',
                      label: const Text('Email'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    passwword = value!;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      hintText: 'Password',
                      label: const Text('Password'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    phone = value!;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: 'Phone',
                      label: const Text('Phone'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    birth = value!;
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.date_range),
                      hintText: 'BirthDate',
                      label: const Text('BirthDate'),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 240, 240),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const SizedBox(height: 20),
                const Text(
                  'Country : ',
                  style: TextStyle(fontSize: 19),
                ),
                RadioListTile(
                    title: const Text('Jordan'),
                    value: 'Jordan',
                    groupValue: _country,
                    onChanged: (value) {
                      setState(() {
                        _country = value!;
                      });
                    }),
                RadioListTile(
                    title: const Text('Saudi Arabia'),
                    value: 'Saudi Arabia',
                    groupValue: _country,
                    onChanged: (value) {
                      setState(() {
                        _country = value!;
                      });
                    }),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const SizedBox(height: 20),
                const Text(
                  'Gender :',
                  style: TextStyle(fontSize: 19),
                ),
                RadioListTile(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    }),
                RadioListTile(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    }),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const SizedBox(height: 20),
                SwitchListTile(
                    activeColor: Colors.blue,
                    title: Text('Enable access to this app.'),
                    value: isEnable,
                    onChanged: (value) {
                      setState(() {
                        isEnable = value;
                      });
                    }),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const SizedBox(height: 20),
                CheckboxListTile(
                    title: Text('Agree'),
                    activeColor: Colors.blue,
                    value: isAgree,
                    onChanged: (value) {
                      setState(() {
                        isAgree = value!;
                      });
                    }),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print(
                              'username : $username , full name : $fullName , email: $emal ,birth date : $birth ,gender : $_gender , countery : $_country');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, shape: LinearBorder()),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
