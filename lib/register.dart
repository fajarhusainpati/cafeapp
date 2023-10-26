import 'package:flutter/material.dart';
import 'package:login_signup_ui/constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     tooltip: "Back",
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset("assets/images/register.png"),
              ),
              const Text(
                "Sign up",
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
                      child: Icon(
                        Icons.alternate_email_sharp,
                        color: const Color.fromRGBO(171, 176, 182, 1)
                            .withOpacity(0.8),
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
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      child: Icon(
                        Icons.person_outline,
                        color: const Color.fromRGBO(171, 176, 182, 1)
                            .withOpacity(0.8),
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
                          hintText: "Full name",
                          hintStyle: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      child: Icon(
                        Icons.call_outlined,
                        color: const Color.fromRGBO(171, 176, 182, 1)
                            .withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Expanded(
                      child: TextField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          counter: Offstage(),
                          hintText: "Mobile",
                          hintStyle: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: GestureDetector(
                  child: RichText(
                    text: const TextSpan(
                      text: "By signing up, you're agree to our ",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(155, 164, 174, 1),
                        height: 1.35,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Color.fromRGBO(80, 131, 204, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(155, 164, 174, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Color.fromRGBO(80, 131, 204, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
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
                  onPressed: () {},
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Joined us before?",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromRGBO(144, 149, 154, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Color.fromRGBO(59, 107, 175, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
