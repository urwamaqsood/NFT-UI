import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class Nft_cards extends StatelessWidget {
  final dynamic nftData;
  dynamic handleClick;
  final double height;
  Nft_cards({this.nftData, this.handleClick, this.height = 2});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {handleClick?.call(context)},
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 20),
        height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(nftData['image']), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                container(time: '08'),
                padding(),
                container(time: '54'),
                padding(),
                container(time: '12'),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nftData['name'],
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      nftData['author'],
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(
                  width: 61,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: gray,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/ethereum.png',
                            width: 20,
                          ),
                          Text(nftData['price'] + ' ETH',
                              style: Theme.of(context).textTheme.headline4)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'CURRENT BID',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class padding extends StatelessWidget {
  const padding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        ":",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}

class container extends StatelessWidget {
  container({required this.time});

  late String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: white.withOpacity(0.4),
      ),
      child: Text(
        time,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
