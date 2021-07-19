import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:medicine_rider/Files/searchData.dart';
import 'package:medicine_rider/screens/cartScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search medicine'),centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: (context), delegate: CitySearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Cart();
                  })),
                  icon: Icon(Icons.shopping_cart,size: 30,),
                ),
                Text('View Cart',style: TextStyle(color: Colors.black,fontSize: 15),),
              ],
            ),
          )
        ],
      ),
    );

  }
}
