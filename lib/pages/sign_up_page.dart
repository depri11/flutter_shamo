import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class SignUpPage extends StatelessWidget {
  Widget _header() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Sign up",
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Register and Happy Shopping',
          style: subtitleTextStyle,
        ),
      ]),
    );
  }

  Widget _fullName() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_fullname.png',
                  width: 16,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Full Name',
                      hintStyle: subtitleTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _userName() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Username',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_username.png',
                width: 16,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Your Full Name',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }

  Widget _emailAddress() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Email Address',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_email.png',
                width: 16,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Your Email Address',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }

  Widget _password() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_password.png',
                width: 16,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Your Password',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }

  Widget _btnSignUp() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () => {},
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        child: Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: subtitleTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/sign-in'),
            child: Text(
              'Sign In',
              style: purpleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _fullName(),
              _userName(),
              _emailAddress(),
              _password(),
              _btnSignUp(),
              Spacer(),
              _footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
