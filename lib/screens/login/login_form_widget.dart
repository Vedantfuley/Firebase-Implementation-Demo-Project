

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: 'E-Mail',
              hintText: 'E-Mail',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: 'Password',
              hintText: 'Password',
              border: OutlineInputBorder(
              ),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(alignment: Alignment.centerRight ,child: TextButton(onPressed: () {}, child: Text('Forget Password?'))),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: Text('LOGIN')),
          )
        ],
      ),
    );
  }
}
