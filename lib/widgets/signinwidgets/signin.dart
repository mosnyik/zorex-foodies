import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/login.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Center(
          child: Padding(
        padding: kSignUpBodyPadding,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'E-mail address',
              style: kHeader3TextStyle.copyWith(color: kTextBlack),
            ),
            Container(
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: kGrey,
                      offset: Offset(4, 4),
                      blurRadius: 6,
                    )
                  ]),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Text(
              'Enter Password',
              style: kHeader3TextStyle.copyWith(color: kTextBlack),
            ),
            Container(
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: kGrey,
                      offset: Offset(4, 4),
                      blurRadius: 6,
                    )
                  ]),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: showPass
                      ? const Icon(
                          Icons.remove_red_eye_outlined,
                          color: kMainColorMonochrom,
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          color: kMainColor,
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text('Forgot Password?',
                        style: kBodyTextStyle.copyWith(
                            color: kGrey,
                            decoration: TextDecoration.underline)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const MyCheckBox(),
                  Text('Remember Me',
                      style: kBodyTextStyle.copyWith(color: kBlack))
                ],
              ),
            ),
            LargeButton(
              title: 'Login',
              action: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: kDividerMargin,
                    child: const Divider(
                      color: kGrey,
                      thickness: 2.0,
                      height: 100,
                    ),
                  ),
                ),
                Text(
                  'OR',
                  style: kHeader2TextStyle.copyWith(color: kBlack),
                ),
                Expanded(
                  child: Container(
                    margin: kDividerMargin,
                    child: const Divider(
                      color: kGrey,
                      thickness: 2.0,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                'Sign in using:',
                style: kHeader3TextStyle.copyWith(color: kTextBlack),
              ),
            ),
            Padding(
              padding: kAlternativeLogginRowPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: kAlternativeLogginImageWidth,
                    height: kAlternativeLogginImageHeight,
                    margin: kAlternativeLogginImageMargin,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/google.png')),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: kGrey,
                            blurRadius: 12,
                            offset: Offset(6, 4),
                          ),
                        ]),
                  ),
                  Container(
                    width: kAlternativeLogginImageWidth,
                    height: kAlternativeLogginImageHeight,
                    margin: kAlternativeLogginImageMargin,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/facebook.png')),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: kGrey,
                            blurRadius: 12,
                            offset: Offset(6, 4),
                          ),
                        ]),
                  ),
                  Container(
                    width: kAlternativeLogginImageWidth,
                    height: kAlternativeLogginImageHeight,
                    margin: kAlternativeLogginImageMargin,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/twitter.jpeg')),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: kGrey,
                            blurRadius: 12,
                            offset: Offset(6, 4),
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
    });
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: kMainColor,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}

class LargeInputTextField extends StatelessWidget {
  const LargeInputTextField({
    Key? key,
    required this.obscureText,
    required helper,
  }) : super(key: key);
  final bool obscureText;
  final String helper = '';
  // Icon suffixIcon;
  // Icon prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: kGrey,
              offset: Offset(4, 4),
              blurRadius: 6,
            )
          ]),
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: obscureText,
        decoration: InputDecoration(
          helperText: helper,
          // prefixIcon: ,
          // suffixIcon: ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
