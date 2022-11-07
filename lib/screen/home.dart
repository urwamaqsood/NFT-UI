import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/colors/colors.dart';
import 'package:nft_app/data/nft_data.dart';
import 'package:nft_app/screen/nft_detail.dart';

import '../widgets/nft_cards.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          color: gray,
        ),
        child: TabBar(
          labelColor: primaryColorLight,
          unselectedLabelColor: lightgray,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 0),
          ),
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_rounded,
                size: 32,
              ),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: List.generate(
              nftList.length,
              (index) => Nft_cards(
                    nftData: nftList[index],
                    handleClick: (context) =>
                        _goToNFTDetail(context, nftList[index]),
                  )),
        ),
      ),
    );
  }
}

void _goToNFTDetail(BuildContext context, nftData) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => NFTDetail(nftData: nftData)));
}
