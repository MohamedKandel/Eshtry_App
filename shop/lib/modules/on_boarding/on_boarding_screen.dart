import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/modules/login/login_screen.dart';
import 'package:shop/shared/components/components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardModel {
  final String image;
  final String title;
  final String body;

  BoardModel({required this.image, required this.title, required this.body});
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardModel> boardList = [
    BoardModel(
      image: "assets/images/on_board_1.png",
      title: "Shop the Best Fashion Deals",
      body:
          "Welcome to Eshtry, your go-to app for affordable and trendy clothes. We offer a wide variety of styles at the best prices, so you can refresh your wardrobe without breaking the bank. From casual wear to elegant dresses, there’s something for everyone. Find your next favorite outfit today!",
    ),
    BoardModel(
      image: "assets/images/on_board_2.png",
      title: "Exclusive Discounts Just for You",
      body:
          "At Eshtry, you can always shop smart with the lowest prices on your favorite clothes. Plus, invite your friends to join the app and both of you will receive exclusive discount coupons to make your shopping even more rewarding. The more friends you invite, the more rewards you earn — shopping has never been so fun!",
    ),

    BoardModel(
      image: "assets/images/on_board_3.png",
      title: "Let’s Get Started!",
      body:
          "You’re all set! It’s time to dive into Eshtry and start shopping for the latest styles. Browse our collection, discover amazing deals, and use your rewards to save even more. Your new wardrobe is just a tap away. Let’s make shopping easier, faster, and more enjoyable!",
    ),
  ];

  bool isLast = false;

  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () {
                navigateToAndEndPrevious(context, LoginScreen());
              },
              icon: Text("Skip", style: Theme.of(context).textTheme.labelSmall),
            ),
            //Text("Skip", style: Theme.of(context).textTheme.labelSmall,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemBuilder:
                    (context, index) => _itemBuilder(context, boardList[index]),
                itemCount: boardList.length,
                onPageChanged: (int index) {
                  if (index == boardList.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    isLast = false;
                  }
                },
              ),
            ),
            verticalSpace(50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: boardList.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5.0,
                    expansionFactor: 4,
                  ),
                ),
                FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: HexColor("3b55b6"),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    print(isLast);
                    if (isLast) {
                      navigateToAndEndPrevious(context, LoginScreen());
                    } else {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 750),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 18.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _itemBuilder(context, BoardModel model) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(child: Image(image: AssetImage(model.image))),
    verticalSpace(15.0),
    Text(model.title, style: Theme.of(context).textTheme.labelLarge),
    verticalSpace(30.0),
    Text(model.body, style: Theme.of(context).textTheme.labelMedium),
  ],
);
