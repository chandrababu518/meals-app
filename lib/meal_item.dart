import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  MealItem({@required this.title, @required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    imgUrl,
                    height: 250,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 5,
                    child: Container(
                      width: 200,
                      height: 40,
                      padding: EdgeInsets.all(10),
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
