import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_concept_flutter/item%20screen/item_screen.dart';

class RecommendedTile extends StatelessWidget {

  final BuildContext context;

  const RecommendedTile({Key key, this.context}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    context = this.context;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 2.0),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: Container(
            width: MediaQuery.of(context).size.width / 1.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemScreen()));
                  },
                                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600],
                          offset: Offset(3,3),
                          blurRadius: 6
                        )
                      ]
                    ),
                    child: ClipRRect(
                      child: Image.asset('assets/images/restaurant.jpg',
                      fit: BoxFit.fitWidth,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Restaurant Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, size: 18, color: Colors.yellow[800],),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('4.5', style: TextStyle(color: Colors.grey[800]),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Icon(CupertinoIcons.clock_fill, size: 18, color: Colors.grey[500],),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                      child: Text('25 - 30 min', style: TextStyle(color: Colors.grey[800]),),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('\$\$\$', style: TextStyle(color: Colors.grey[800]),),
                    ),
                  ],
                )
              ],
            )
          ),
          )
        ],
      ),
    );
  }
}