import 'package:flutter/material.dart';
import 'package:flutterabohilalaapp/Model/object.dart';
import 'package:flutterabohilalaapp/Utility/config.dart';

class DesignItemList extends StatefulWidget {
  Object _object;
  DesignItemList(this._object);
  @override
  _DesignItemListState createState() => _DesignItemListState();
}

class _DesignItemListState extends State<DesignItemList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(SizeConfig.safeBlockHorizontal * 3.4),
            child: Image.asset(
              '${widget._object.image}',
              fit: BoxFit.cover,
              width: SizeConfig.safeBlockHorizontal * 20.4,
              height: SizeConfig.safeBlockVertical * 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 3),
            width: SizeConfig.safeBlockHorizontal * 55,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " ${widget._object.name}",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                            wordSpacing: 1.4,
                            color: Color(0xff424242),
                            fontSize: SizeConfig.safeBlockHorizontal * 3.4),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Text(
                          " ${widget._object.color}",
                          style: TextStyle(
                              wordSpacing: 1.4,
                              fontSize: SizeConfig.safeBlockHorizontal * 2.4),
                        ),
                      ),
                    ],
                  ),
                  Text("\$ ${widget._object.price}"),
                ],
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_left,
            color: Colors.grey[600],
            size: SizeConfig.safeBlockHorizontal * 7,
          ),
        ],
      ),
    );
  }
}
