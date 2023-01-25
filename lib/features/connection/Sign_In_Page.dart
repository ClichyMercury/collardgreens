import 'package:collard_greens/conponents/textfield.dart';
import 'package:collard_greens/features/connection/Sign_Up_page.dart';
import 'package:flutter/material.dart';
import '../../AppRoot/home/home.dart';
import '../../ui/colors/app_colors.dart';
import '../../conponents/elevatedButton.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passWCtrl = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        "Sign In to your Account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Image.asset("assets/images/logo.jpg"),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                SizedBox(
                  height: 170,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFild(
                            hintTxt: "Email or Phone Number",
                            controller: emailCtrl,
                            keyBordType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            enabled: true),
                        textFild(
                            hintTxt: "Password",
                            controller: passWCtrl,
                            keyBordType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            enabled: true)
                      ]),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(150, 15, 0, 25),
                    child: TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: AppColors.mainGreen),
                        )),
                  ),
                ),
                Mainbutton(
                  btnColor: AppColors.mainGreen,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => const Home()));
                  },
                  text: 'Sign In',
                ),
                const SizedBox(height: 25),
                const Text(
                  "or",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: AppColors.mainGreen),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/Google.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: Image.asset("assets/images/apple.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 60,
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Image.asset("assets/images/facebook.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?  ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const SignUpPage()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: AppColors.mainGreen),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
