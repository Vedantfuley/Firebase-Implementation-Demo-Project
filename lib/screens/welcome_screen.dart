
import 'package:firebase/constants/colors.dart';
import 'package:flutter/material.dart';
import '../constants/text_strings.dart';
import '../constants/sizes.dart';
import '../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('img/4498903-removebg-preview.png'),
            height: height * 0.6,),
            Column(
              children: [
                Text(Title1,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 0),),
                Text(Subtitle,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: SecondaryColor,
                      side: BorderSide(color: SecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: ButtonHeight)
                    ),
                    child: Text(Login.toUpperCase()))),
                const SizedBox(width: 10),
                Expanded(child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        shape: RoundedRectangleBorder(),
                        foregroundColor: whiteColor,
                        backgroundColor: SecondaryColor,
                        side: BorderSide(color: SecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: ButtonHeight)
                    ),
                    child: Text(Signup.toUpperCase()))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
