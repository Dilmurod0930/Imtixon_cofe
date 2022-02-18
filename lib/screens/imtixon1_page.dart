import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/screens/userdata.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
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
                      margin: const EdgeInsets.only(bottom: 10, top: 55),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: FontsizeConst.ExtraLargeSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      "Welcome back",
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
                                labelStyle: TextStyle(color: Colors.blue),
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
                              height: 60,
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
                                  suffix: IconButton(
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
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: const [
                                      Text("Forgot Password"),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 125),
                                        child: Divider(
                                          thickness: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 212, top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary:  const Color(0xFF324A59),
                  fixedSize: const Size(70, 70),
                  shape: const  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)))),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String email = _emailController.text.trim().toLowerCase();
                  String password = _passwordController.text.trim();

                  for (var i = 0; i < Userdata.users.length; i++) {
                    if (Userdata.users[i].email == email &&
                        Userdata.users[i].password == password) {
                      Userdata.currentUser = Userdata.users[i];
                      Navigator.pushReplacementNamed(context, '/sign_up',
                          arguments: Userdata.users[i].name);
                    }
                  }
                }
              },
              child: const  Text(
                "Log in",
                style: TextStyle(
                    fontSize: FontsizeConst.SmallSize, color: Colors.white),
              ),
            ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New member?"),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: FontsizeConst.MediumSize,
                            color: Color(0xff324A59)),
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
