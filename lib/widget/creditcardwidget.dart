import 'package:creditcard/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class MyCreditCardWidget {
  static Widget getCreditCardWidget({
    required bool enableFloatingCard,
    required bool useFloatingAnimation,
    required bool useGlassMorphism,
    required bool useBackgroundImage,
    required bool isCvvFocused,
    required bool isLightTheme,
    required String cardNumber,
    required String expiryDate,
    required String cardHolderName,
    required String cvvCode,
  }) {
    final frontCardBorder = useGlassMorphism ? null : Border.all(color: Colors.grey);
    final backCardBorder = useGlassMorphism ? null : Border.all(color: Colors.grey);

    return CreditCardWidget(
      enableFloatingCard: enableFloatingCard,
      glassmorphismConfig: _getGlassmorphismConfig(useGlassMorphism, isLightTheme),
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardHolderName: cardHolderName,
      cvvCode: cvvCode,
      bankName: 'Axis Bank',
      frontCardBorder: frontCardBorder,
      backCardBorder: backCardBorder,
      showBackView: isCvvFocused,
      obscureCardNumber: true,
      obscureCardCvv: true,
      isHolderNameVisible: true,
      cardBgColor: isLightTheme ? AppColors.cardBgLightColor : AppColors.cardBgColor,
      backgroundImage: useBackgroundImage ? 'assets/images/card_bg.png' : null,
      isSwipeGestureEnabled: true,
      onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
      customCardTypeIcons: <CustomCardTypeIcon>[
        CustomCardTypeIcon(
          cardType: CardType.mastercard,
          cardImage: Image.asset(
            'assets/images/mastercard.png',
            height: 48,
            width: 48,
          ),
        ),
      ],
    );
  }

  static Glassmorphism? _getGlassmorphismConfig(bool useGlassMorphism, bool isLightTheme) {
    if (!useGlassMorphism) {
      return null;
    }

    final LinearGradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[Colors.grey.withAlpha(50), Colors.grey.withAlpha(50)],
      stops: const <double>[0.3, 0],
    );

    return isLightTheme
        ? Glassmorphism(blurX: 8.0, blurY: 16.0, gradient: gradient)
        : Glassmorphism.defaultConfig();
  }
}
