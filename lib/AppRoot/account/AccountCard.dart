import 'package:collard_greens/AppRoot/account/calendar/heatMapCalendar.dart';
import 'package:collard_greens/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import 'formAddCard.dart';

class AccountCard extends StatefulWidget {
  const AccountCard({super.key});

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  @override
  Widget build(BuildContext context) {
    String cardNumber = "9651 2545 8956 4212";
    String expiryDate = "2023, 07, 31";
    String cardHolderName = "Gael Sassan";
    String cvvCode = "508";
    bool isCvvFocused = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 20),
              GestureDetector(
                onDoubleTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => const AddCard()));
                }),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(55))),
                  child: CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    showBackView: isCvvFocused,
                    cardBgColor: Colors.transparent,
                    glassmorphismConfig: Glassmorphism.defaultConfig(),
                    backgroundImage: 'assets/images/credit_card.webp',
                    obscureCardNumber: false,
                    obscureCardCvv: false,
                    isHolderNameVisible: true,
                    height: 175,
                    textStyle: TextStyle(color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    isChipVisible: true,
                    isSwipeGestureEnabled: true,
                    animationDuration: Duration(milliseconds: 1000),
                    frontCardBorder: Border.all(color: Colors.grey),
                    backCardBorder: Border.all(color: Colors.grey),
                    customCardTypeIcons: <CustomCardTypeIcon>[
                      CustomCardTypeIcon(
                        cardType: CardType.visa,
                        cardImage: Image.asset("assets/images/logo.jpg"),
                      ),
                    ],
                    onCreditCardWidgetChange: (CreditCardBrand) {},
                  ),
                ),
              ),
              SizedBox(height: 7.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly use",
                    style: TextStyle(
                        color: AppColors.mainGreen,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Based on your daily use",
                    style: TextStyle(
                        color: AppColors.mainGreen,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 7.5),
              HeatMapcalendar()
            ],
          ),
        ),
      ),
    );
  }
}
