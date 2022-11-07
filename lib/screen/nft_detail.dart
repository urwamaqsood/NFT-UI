import 'package:flutter/material.dart';
import 'package:nft_app/widgets/nft_cards.dart';

import '../colors/colors.dart';

class NFTDetail extends StatelessWidget {
  final dynamic nftData;
  const NFTDetail({this.nftData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Place Bid',
          style: Theme.of(context).textTheme.headline3,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Nft_cards(
              nftData: nftData,
              height: 1.6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Lorem Ipsum. Lorem Ipsum is probably the most popular dummy text generator out there. Lorem Ipsum. Lorem Ipsum is probably the most popular dummy text generator out there.',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {},
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
                  'Place a bid',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
