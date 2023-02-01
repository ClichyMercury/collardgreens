import 'package:collard_greens/conponents/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../api/login.dart';
import '../../conponents/PWtextfield.dart';
import '../../conponents/alertDialog.dart';
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
                            prefixIcon: Icons.person,
                            hintTxt: "Complet Name",
                            controller: nameCtrl,
                            keyBordType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            enabled: true),
                        textFild(
                            prefixIcon: Icons.email,
                            hintTxt: "Email or Phone Number",
                            controller: emailCtrl,
                            keyBordType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            enabled: true),
                        PWtextFild(
                          controller: passWCtrl,
                          enabled: true,
                          hintTxt: 'Password',
                          keyBordType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                        PWtextFild(
                          controller: cfrmpassWCtrl,
                          enabled: true,
                          hintTxt: 'Confirm password',
                          keyBordType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        )
                      ]),
                ),
                const SizedBox(height: 30),
                Mainbutton(
                  btnColor: AppColors.mainGreen,
                  onTap: () {
                    if (emailCtrl.text.isNotEmpty &&
                        passWCtrl.text.isNotEmpty) {
                      login(emailCtrl.text, passWCtrl.text);
                    } else {
                      showAlertDialog(context,
                          title: "Email or Password",
                          content:
                              "Make sure Email Field and Password Field is not empty before Submit",
                          defaultActionText: "OK");
                    }
                  },
                  //

                  text: 'Create',
                ),
                const SizedBox(height: 25),
                const Text(
                  "By creating your account you accept the conditions of use of your data as part of the improvement of our services",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: AppColors.mainGreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
