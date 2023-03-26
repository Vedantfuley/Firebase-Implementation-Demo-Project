import 'package:flutter/cupertino.dart';

import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(Welcome), height: size.height * 0.2),
        Center(child: Text(LoginTitle, style: TextStyle(fontSize: 50,fontFamily: 'Great_Vibes'))),
        Center(child: Text(LoginSubtitle, style: TextStyle(fontSize: 19),textAlign: TextAlign.center,)),
      ],
    );
  }
}
