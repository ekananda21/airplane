import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30), //jarak ke atas
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget inputSection() {
    Widget namelInput() {
      return Container(
        //pembungkus satu inputan
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //tulisan start ditaro dikiri
          children: [
            Text(
              'Full Name',
            ),
            SizedBox(
              height: 6, //jarak antara full name dan form
            ),
            TextFormField(
              //widget utk form
              cursorColor: kBlackColor, // warna cursor ketika ngetik
              decoration: InputDecoration(
                //input
                hintText: 'Your Full Name',
                border: OutlineInputBorder(
                  //kotak pembungkus inputannya
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //ketika di klik dan mengisi inputan, border dipakai yg ini
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                  borderSide: BorderSide(
                    //bikin garis luarnya warna ungu ketika di klik
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        //pembungkus satu inputan
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //tulisan start ditaro dikiri
          children: [
            Text(
              'Email Address',
            ),
            SizedBox(
              height: 6, //jarak antara full name dan form
            ),
            TextFormField(
              //widget utk form
              cursorColor: kBlackColor, // warna cursor ketika ngetik
              decoration: InputDecoration(
                //input
                hintText: 'Your Email Address',
                border: OutlineInputBorder(
                  //kotak pembungkus inputannya
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //ketika di klik dan mengisi inputan, border dipakai yg ini
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                  borderSide: BorderSide(
                    //bikin garis luarnya warna ungu ketika di klik
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        //pembungkus satu inputan
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //tulisan start ditaro dikiri
          children: [
            Text(
              'Password',
            ),
            SizedBox(
              height: 6, //jarak antara full name dan form
            ),
            TextFormField(
              //widget utk form
              cursorColor: kBlackColor, // warna cursor ketika ngetik
              obscureText: true,
              decoration: InputDecoration(
                //input
                hintText: 'Your Password',
                border: OutlineInputBorder(
                  //kotak pembungkus inputannya
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //ketika di klik dan mengisi inputan, border dipakai yg ini
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                  borderSide: BorderSide(
                    //bikin garis luarnya warna ungu ketika di klik
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget hobbyInput() {
      return Container(
        //pembungkus satu inputan
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //tulisan start ditaro dikiri
          children: [
            Text(
              'Hobby',
            ),
            SizedBox(
              height: 6, //jarak antara full name dan form
            ),
            TextFormField(
              //widget utk form
              cursorColor: kBlackColor, // warna cursor ketika ngetik
              decoration: InputDecoration(
                //input
                hintText: 'Your Hobby',
                border: OutlineInputBorder(
                  //kotak pembungkus inputannya
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //ketika di klik dan mengisi inputan, border dipakai yg ini
                  borderRadius: BorderRadius.circular(
                    //bikin sudut nya tidak patah
                    defaultRadius,
                  ),
                  borderSide: BorderSide(
                    //bikin garis luarnya warna ungu ketika di klik
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget submitButton() {
      return Container(
        width: double.infinity, //mengisi ruang yg tersisa
        height: 55,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '\bonus');
          },
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              )),
          child: Text(
            'Get Started',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 30), //jarak 30 dari tulisan title
      padding: EdgeInsets.symmetric(
        //jarak antara widget input
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        //box input section
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        //utk melist tampilan atas ke bwh
        children: [
          namelInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          submitButton(),
        ],
      ),
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 0, bottom: 73),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

}
