import 'package:flutter/material.dart';
import 'package:flutterabohilalaapp/Utility/config.dart';

class Cart extends StatefulWidget {
  String image, name, color, price;
  bool favorite;

  Cart(this.image, this.name, this.color, this.price, this.favorite);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;
  double price = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    price = double.parse(widget.price);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                '${widget.image}',
                fit: BoxFit.fitHeight,
                height: SizeConfig.screenHeight * 0.8,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical * 6,
                    left: SizeConfig.safeBlockHorizontal * 7,
                    right: SizeConfig.safeBlockHorizontal * 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: SizeConfig.safeBlockHorizontal * 5.6,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: SizeConfig.safeBlockHorizontal * 5.6,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.safeBlockVertical * 34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              SizeConfig.safeBlockHorizontal * 8.4),
                          topRight: Radius.circular(
                              SizeConfig.safeBlockHorizontal * 8.4)),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 10,
                        right: SizeConfig.safeBlockHorizontal * 8,
                        bottom: SizeConfig.safeBlockHorizontal,
                        top: SizeConfig.safeBlockHorizontal * 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.name}',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6.8,
                              fontFamily: 'Poppins',
                              wordSpacing: 2,
                              letterSpacing: 0.2,
                              color: Color(0xff424242)),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockHorizontal * 0.2,
                        ),
                        Text(
                          '${widget.color}',
                          style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 3.4,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff616161),
                            letterSpacing: 0.2,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockHorizontal * 3.4,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: SizeConfig.safeBlockHorizontal * 3,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              radius: SizeConfig.safeBlockHorizontal * 3,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: SizeConfig.safeBlockHorizontal * 3,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count > 1 ? count - 1 : count;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xff757575)),
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.safeBlockHorizontal * 2)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.safeBlockHorizontal * 0.4,
                                      horizontal:
                                          SizeConfig.safeBlockHorizontal * 2),
                                  child: Icon(
                                    Icons.remove,
                                    size: SizeConfig.safeBlockHorizontal * 5.4,
                                    color: Color(0xff424242),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 4,
                            ),
                            Text(
                              '$count',
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff424242),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 4,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count < 5 ? count + 1 : count;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xff757575)),
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.safeBlockHorizontal * 2)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.safeBlockHorizontal * 0.8,
                                      horizontal:
                                          SizeConfig.safeBlockHorizontal * 2.4),
                                  child: Icon(
                                    Icons.add,
                                    size: SizeConfig.safeBlockHorizontal * 4.4,
                                    color: Color(0xff424242),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 3.4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: SizeConfig.safeBlockHorizontal * 12.4,
                              height: SizeConfig.safeBlockVertical * 5.8,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffef5350), width: 1.4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: widget.favorite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Color(0xffe57373),
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.redAccent,
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.safeBlockHorizontal * 10.4),
                              child: RaisedButton(
                                onPressed: () {},
                                color: Color.fromRGBO(253, 55, 95, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.safeBlockHorizontal * 3)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.safeBlockVertical * 1.2,
                                      horizontal:
                                          SizeConfig.safeBlockHorizontal * 1),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '\$ ${(price * count).toStringAsFixed(2)}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.2,
                                            wordSpacing: 2,
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    4),
                                      ),
                                      SizedBox(
                                        width:
                                            SizeConfig.safeBlockHorizontal * 3,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
