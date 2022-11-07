import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/colors/colors.dart';

import 'home.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Image.asset(
                'images/intro.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'NFT Market Place',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Lorem Ipsum. Lorem Ipsum is probably the most popular dummy text generator out there. Lorem Ipsum. Lorem Ipsum is probably the most popular dummy text generator out there.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                style: ElevatedButton.styleFrom(
                  onPrimary: primaryColorDark,
                  primary: primaryColorDark,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
