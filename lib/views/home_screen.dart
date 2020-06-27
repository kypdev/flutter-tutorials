import 'package:flutter/material.dart';
import 'package:flutter_tutorials/common/custom_raise_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void openAnotherScreen() {
    debugPrint('open second screen button');
    // customRoute(context: context, screen: SecondScreen());
    // Navigator.push(context, animationRoute(screen: SecondScreen));
    Navigator.pushNamed(context, '/second');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                customRaiseButton(
                  context: context,
                  action: openAnotherScreen,
                  btnColor: Color(0xff12cad6),
                  btnName: 'Open Second Screen',
                  btnColorName: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
