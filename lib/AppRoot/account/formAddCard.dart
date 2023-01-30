import 'package:collard_greens/AppRoot/widget/app_bar_pop.dart';
import 'package:collard_greens/conponents/elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

import '../../ui/colors/app_colors.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormFieldState<String>>? cardNumberKey;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    GlobalKey<FormFieldState<String>>? cvvCodeKey;
    GlobalKey<FormFieldState<String>>? expiryDateKey;
    GlobalKey<FormFieldState<String>>? cardHolderKey;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarPop(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.jpg",
              height: 200,
              width: 200,
            ),
            const Text(
              "Add a new card",
              style: TextStyle(
                  color: AppColors.mainGreen,
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
            CreditCardForm(
              formKey: formKey, // Required
              cardNumberKey: cardNumberKey,
              cvvCodeKey: cvvCodeKey,
              expiryDateKey: expiryDateKey,
              cardHolderKey: cardHolderKey,
              onCreditCardModelChange: (CreditCardModel data) {}, // Required
              themeColor: Colors.red,
              obscureCvv: true,
              obscureNumber: true,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardNumberValidator: (String? cardNumber) {},
              expiryDateValidator: (String? expiryDate) {},
              cvvValidator: (String? cvv) {},
              cardHolderValidator: (String? cardHolderName) {},
              onFormComplete: () {
                // callback to execute at the end of filling card data
              },
              cardNumberDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number',
                hintText: 'XXXX XXXX XXXX XXXX',
              ),
              expiryDateDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Expired Date',
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CVV',
                hintText: 'XXX',
              ),
              cardHolderDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Card Holder',
              ),
              cardHolderName: '',
              cardNumber: '',
              cvvCode: '',
              expiryDate: '',
            ),
            SizedBox(height: 20),
            Mainbutton(
                onTap: (() {}), text: "Add", btnColor: AppColors.mainGreen)
          ],
        ),
      ),
    );
  }
}
