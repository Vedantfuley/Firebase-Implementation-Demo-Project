import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("OR"),
          OutlinedButton.icon(icon: Image(image: AssetImage(Google),width: 20,),onPressed: () {},

              label: Text('Sign-In with Google')),

          const SizedBox(height: 10),
          TextButton(onPressed: () {}, child: Text.rich(
              TextSpan(
                text: "Don't have an Account?",
                children: [
                  TextSpan(
                      text: "Sign-Up"
                  ),
                ],
              )
          )),
        ],
      ),
    );
  }
}

