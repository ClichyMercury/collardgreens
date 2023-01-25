import 'package:collard_greens/conponents/textfield.dart';
import 'package:flutter/material.dart';
import '../../ui/colors/app_colors.dart';
import '../../conponents/elevatedButton.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtrl = TextEditingController();
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passWCtrl = TextEditingController();
    TextEditingController cfrmpassWCtrl = TextEditingController();
  
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
                        "Create a new Account",
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
                  height: 340,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFild(
                            hintTxt: "Complet Name",
                            controller: nameCtrl,
                            keyBordType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            enabled: true),
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
                            enabled: true),
                        textFild(
                            hintTxt: "Confirm Password",
                            controller: cfrmpassWCtrl,
                            keyBordType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            enabled: true)
                      ]),
                ),
                const SizedBox(height: 30),
                Mainbutton(
                  btnColor: AppColors.mainGreen,
                  onTap: () {},
                  text: 'Create',
                ),
                const SizedBox(height: 25),
                const Text(
                  "By creating your account you accept the conditions of use of your data as part of the improvement of our services",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: AppColors.mainGreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
