import 'package:flutter/material.dart';
import 'package:food_concept_flutter/start%20screen/recommended_tile.dart';

class StartScreen extends StatelessWidget {

  final List<String> foodItems = [
    'Pasta', 'Sushi', 'Salads', 'Burgers', 'Chicken', 'Desserts'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                offset: Offset(0,3),
                blurRadius: 10
              )
            ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: Icon(Icons.pin_drop_outlined, color: Colors.orange,),
                    ),
                    Text(
                      '1600 Pennsylvania Avenue, Washington DC',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.search, color: Colors.grey[600],),
                            border: InputBorder.none,
                            hintText: 'Search for food',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 4.0),
                    child: Text(
                      'Something new',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: foodItems.length,
                      itemBuilder: (context, index) {
                        return SomethingNewTile(foodItems: foodItems, index: index,);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 12.0),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return RecommendedTile(context: context,);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        )
      ],
    );
  }
}

class SomethingNewTile extends StatelessWidget {

  final List<String> foodItems;
  final int index;

  const SomethingNewTile({Key key, @required this.foodItems, @required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 16.0, right: 8.0, bottom: 16.0),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.grey[600],
            offset: Offset(3,3),
            blurRadius: 6
          )],
          color: Colors.orange,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0),
            child: Text(
              foodItems[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800
              ),
            ),
          ),
        ),
      ),
    );
  }
}