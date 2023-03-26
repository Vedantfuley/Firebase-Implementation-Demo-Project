import 'package:flutter/cupertino.dart';

import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
   FormHeaderWidget({
    super.key,
     required this.image1,
     required this.title1,
     required this.subtitle1,
  });
  final String image1,title1,subtitle1;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image(image: AssetImage(image1), height: size.height * 0.2)),
        SizedBox(height: 20,),
        Center(child: Text(title1, textAlign: TextAlign.center,style: TextStyle(fontSize: 15,))),
        Center(child: Text(subtitle1),
        )],
    );
  }
}
