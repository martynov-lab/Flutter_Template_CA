import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
            // SpinKitCircle(
            //   color: Color.fromARGB(255, 105, 112, 150),
            //   size: 50.0,
            // ),
          ),
        ),
      );
}
