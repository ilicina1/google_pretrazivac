import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/style/Styles.dart';
import 'package:google_pretrazivac/viewModel/SignInViewModel.dart';

class MainBodyWidgets {
  var context;

  MainBodyWidgets(this.context);

  Widget mainBodyWidgets(_googleSignIn) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
              child: Text(
                'Sign in with google account',
                style: Styles.siginHone,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => handleSignIn(context, _googleSignIn),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'SignIn',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              style: Styles.blueButton,
            ),
          ],
        )
      ],
    );
  }
}
