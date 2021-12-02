import 'package:clone_shoes/theme/color.dart';
import 'package:clone_shoes/util/my_shopping_json.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: lightGrey,
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        SizedBox(height: 20),
        Text(
          "Wish List",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 15),
        Column(
          children: List.generate(myShoppings.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 110,
                    width: (size.width - 30) * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(myShoppings[index]['imageUrl']),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 110,
                    width: (size.width - 30) * 0.50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          myShoppings[index]['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${myShoppings[index]['price']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        SizedBox(height: 50),
        Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {},
            child: Container(
              height: 45,
              width: size.width * 0.35,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: blue),
                child: Text(
                  "Checkout",
                  style: TextStyle(fontWeight: FontWeight.w500, color: white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
