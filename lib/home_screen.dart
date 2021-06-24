import 'package:flutter/material.dart';
import 'package:flutterabohilalaapp/Widget/list_Item.dart';
import 'package:flutterabohilalaapp/cart.dart';

import 'Model/object.dart';
import 'Router/my_route.dart';
import 'Utility/config.dart';
import 'Widget/menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;
  List list = womenList;
  List _category = [
    'بلايز',
    'بلاطين',
    'بدل',
  ];

  _setSelected(int val) {
    List _temp;
    switch (val) {
      case 0:
        _temp = womenList;
        break;
      case 1:
        _temp = menList;
        break;
      case 2:
        _temp = teenList;
        break;
      default:
        _temp = womenList;
        break;
    }
    setState(() {
      list = _temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var _controller = new ScrollController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.safeBlockHorizontal * 7.4,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockVertical * 4.4,
                      right: SizeConfig.safeBlockHorizontal * 4.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuDesign(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.4),
                        child: Image.asset(
                          "assets/logo.jpg",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),

                //Title and subtitle
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 3.6,
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 6.4),
                  child: Text(
                    'مجمع أبو هلال التجاري',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockHorizontal * 8.6,
                        color: Color.fromRGBO(237, 15, 72, 1),
                        letterSpacing: 0.2),
                  ),
                ),
//                SizedBox(
//                  height: 0,
//                ),
                Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 8.4),
                  child: Text(
                    'لارقی الموديلات الشبابية التركية و الاوروبية',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                      color: Color(0xff757575),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                      wordSpacing: 0.4,
                    ),
                  ),
                ),

                //Category top bar

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 4.4,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 12.4,
                  width: SizeConfig.screenWidth,
                  child: ListView.builder(
                      controller: _controller,
                      itemCount: _category.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.safeBlockHorizontal * 1.2),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selected = index;
                                _setSelected(index);
                                if (index == 2) {
                                  _controller.jumpTo(
                                      _controller.position.maxScrollExtent);
                                }
                                if (index == 0) {
                                  _controller.jumpTo(0.0);
                                }
                              });
                            },
                            child: Card(
                              elevation: 2,
                              color: index == _selected
                                  ? Color.fromRGBO(235, 42, 82, 1)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.safeBlockHorizontal * 1.6)),
                              child: Container(
                                width: SizeConfig.safeBlockHorizontal * 34,
                                child: Center(
                                  child: Text(
                                    '${_category[index]}',
                                    style: TextStyle(
                                      color: index == _selected
                                          ? Colors.white
                                          : Color(0xff616161),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),

                //Shope
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2.4,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 126,
                  width: SizeConfig.screenWidth,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.safeBlockHorizontal * 100,
                          width: SizeConfig.screenWidth,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MyRouter(
                                          page: Cart(
                                            list[index].image,
                                            list[index].name,
                                            list[index].color,
                                            list[index].price,
                                            list[index].favorite,
                                          ),
                                        ));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                    child: Container(
                                      width:
                                          SizeConfig.safeBlockHorizontal * 50,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius
                                                    .circular(SizeConfig
                                                            .safeBlockHorizontal *
                                                        3.4),
                                                child: Image.asset(
                                                  '${list[index].image}',
                                                  fit: BoxFit.cover,
                                                  height: SizeConfig
                                                          .safeBlockVertical *
                                                      40,
                                                  width: SizeConfig
                                                          .safeBlockHorizontal *
                                                      50,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: SizeConfig
                                                            .safeBlockHorizontal *
                                                        62,
                                                    left: SizeConfig
                                                            .safeBlockHorizontal *
                                                        38),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      list[index].favorite =
                                                          list[index].favorite
                                                              ? false
                                                              : true;
                                                    });
                                                  },
                                                  child: Card(
                                                    elevation: 4,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(SizeConfig
                                                                    .safeBlockHorizontal *
                                                                4.9)),
                                                    child: CircleAvatar(
                                                      radius: SizeConfig
                                                              .safeBlockHorizontal *
                                                          4.9,
                                                      backgroundColor:
                                                          Colors.white,
                                                      child: list[index]
                                                              .favorite
                                                          ? Icon(
                                                              Icons.favorite,
                                                              color: Colors.red,
                                                              size: 18,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color: Colors
                                                                  .redAccent,
                                                              size: 18,
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.safeBlockHorizontal *
                                                    4,
                                          ),
                                          Text(
                                            '${list[index].name}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.2,
                                                wordSpacing: 1.4,
                                                color: Color(0xff424242)),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.safeBlockHorizontal *
                                                    2,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(SizeConfig
                                                          .safeBlockHorizontal *
                                                      2.4),
                                              color: Color.fromRGBO(
                                                  253, 55, 95, 1),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14.0,
                                                      vertical: 6.4),
                                              child: Text(
                                                '\$ ${list[index].price}',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.2),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),

//                        SizedBox(
//                          height: SizeConfig.safeBlockVertical * 3.4,
//                        ),

                        // Last Products
                        Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.safeBlockHorizontal * 6.4),
                          child: Text(
                            'الاكثر طلباً',
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6.8,
                              color: Color(0xff424242),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        DesignItemList(list[2]),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        DesignItemList(list[0]),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        DesignItemList(list[1]),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        DesignItemList(list[3]),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
