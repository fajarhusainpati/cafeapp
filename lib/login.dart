import 'package:flutter/material.dart';
import 'package:login_signup_ui/constants.dart';
import 'package:login_signup_ui/register.dart';
import 'package:login_signup_ui/resetpassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 30, left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  //color: Colors.orange,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/login-2.png"),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  //color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromRGBO(25, 43, 77, 1),
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              child: const Icon(
                                Icons.alternate_email_sharp,
                                color: Color.fromRGBO(171, 176, 182, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Expanded(
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Email ID",
                                  hintStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(171, 176, 182, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              child: const Icon(Icons.lock_outline_rounded,
                                  color: Color.fromRGBO(171, 176, 182, 1)),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Expanded(
                              child: TextField(
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(171, 176, 182, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ResetPassword())),
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Color.fromRGBO(59, 107, 175, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: MaterialButton(
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          color: kButtonColor,
                          onPressed: () => {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        indent: 10.0,
                        thickness: 0.5,
                        color: Color.fromRGBO(171, 176, 182, 1),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        endIndent: 10.0,
                        thickness: 0.5,
                        color: Color.fromRGBO(171, 176, 182, 1),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 13.0),
                        color: const Color.fromRGBO(245, 245, 245, 1),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const SizedBox(width: 40.0),
                            Image.asset(
                              "assets/images/google.webp",
                              width: 30,
                            ),
                            const SizedBox(width: 45.0),
                            const Text(
                              "Login with Google",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromRGBO(30, 41, 68, 1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New to Logistics?",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Color.fromRGBO(144, 149, 154, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register())),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 16.5,
                              color: kLinkColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
