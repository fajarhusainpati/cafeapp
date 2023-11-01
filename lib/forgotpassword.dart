import 'package:flutter/material.dart';
import 'package:login_signup_ui/otpverify.dart';
import 'constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    // Password TextField
    Widget _buildPasswordTextField() {
      return Container(
        margin: const EdgeInsets.only(right: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Icon(
                Icons.alternate_email_sharp,
                color: kInputColor,
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
                  hintText: "Email ID / Mobile number",
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kInputColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Submit Button
    Widget _buildSubmitBtn() {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          elevation: 0.0,
          highlightElevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          color: kButtonColor,
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OtpVerify())),
          child: const Text(
            "Submit",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }

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
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: kBackButtonColor,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Image.asset(
                  "assets/images/forgot-password.png",
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Forgot\nPassword?",
                          style: TextStyle(
                            color: kTextHeadingColor,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          "Don't worrul it hannens Please enter the address associated with your account.",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                      ],
                    ),
                    _buildPasswordTextField(),
                    const SizedBox(height: 50.0),
                    _buildSubmitBtn()
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
