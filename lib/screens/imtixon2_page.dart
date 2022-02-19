import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/screens/imtixon4_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numerController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isSecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        iconSize: FontsizeConst.LargeSize,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: FontsizeConst.ExtraLargeSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      "Create an account here",
                      style: TextStyle(
                          fontSize: FontsizeConst.MediumSize,
                          color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _nameController,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_rounded,
                                  color: Colors.blue,
                                ),
                                hintText: "Name",
                                labelText: "User name",
                                labelStyle: TextStyle(color: Colors.blue),
                              ),
                              validator: (name) {
                                if (!RegExp(r'^[a-z A-Z]+$').hasMatch(name!)) {
                                  return "Name error";
                                }
                              },
                            ),
                            const SizedBox(height: 25.0),
                            TextFormField(
                              controller: _numerController,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.blue,
                                ),
                                hintText: "Nummber",
                                labelText: "Nummber",
                              ),
                              validator: (name) {
                                if (!RegExp(r'1-9').hasMatch(name!)) {
                                  return "Name error";
                                }
                              },
                            ),
                            const SizedBox(height: 25.0),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.blue,
                                ),
                                hintText: "Email",
                                labelText: "Email Address",
                                labelStyle:  TextStyle(color: Colors.blue),
                              ),
                              validator: (email) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(email!)) {
                                  return "Email error";
                                }
                              },
                            ),
                            const SizedBox(height: 25.0),
                            SizedBox(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.done,
                                cursorColor: Colors.blue,
                                obscureText: _isSecured,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock_outlined,
                                    color: Colors.blue,
                                  ),
                                  suffixIcon: IconButton(
                                    splashRadius: 20,
                                    icon: const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.blue),
                                    onPressed: () {
                                      setState(() {
                                        _isSecured = !_isSecured;
                                      });
                                    },
                                  ),
                                  hintText: "Password",
                                  labelText: "Password",
                                  labelStyle:
                                      const TextStyle(color: Colors.blue),
                                ),
                                validator: (password) {
                                  if (!RegExp(
                                          r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$")
                                      .hasMatch(password!)) {
                                    return "Password error";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text('By signing up you agree with our Terms of Use'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 212, top: 1, bottom: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ConsColors.EButton,
                    fixedSize: const Size(325, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String email = _emailController.text.trim().toLowerCase();
                    String password = _passwordController.text.trim();

                    for (var i = 0; i < Userdata.users.length; i++) {
                      if (Userdata.users[i].email == email &&
                          Userdata.users[i].password == password) {
                        Userdata.currentUser = Userdata.users[i];
                        Navigator.pushReplacementNamed(context, '/home',
                            arguments: Userdata.users[i].name);
                      }
                    }
                  }
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: FontsizeConst.SmallSize, color: Colors.white),
                ),
              ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already a member?",
                      style: TextStyle(
                          fontSize: FontsizeConst.MediumSize,
                          color: Colors.grey),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/log_in');
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: FontsizeConst.MediumSize,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
