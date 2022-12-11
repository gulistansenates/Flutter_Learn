import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              autofillHints: const [AutofillHints.email],
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.visiblePassword,
              autofocus: true,
              autofillHints: const [AutofillHints.password],
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor2().passwordInput,
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.yellow[400],
    );
  }
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
      labelText: 'Mail',
      icon: Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Icon(Icons.mail),
      ));
}

class _InputDecarotor2 {
  final passwordInput = const InputDecoration(
      labelText: 'Password',
      icon: Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Icon(Icons.lock),
      ));
}
