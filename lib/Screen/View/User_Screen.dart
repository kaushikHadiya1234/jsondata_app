import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/cart_provider.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  CartProvider? pf;
  CartProvider? pt;

  @override
  void initState() {
    super.initState();
    Provider.of<CartProvider>(context, listen: false).CartJsonParsing();
    // Provider.of<CartProvider>(context, listen: false).RandomColor();
  }

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<CartProvider>(context, listen: false);
    pt = Provider.of<CartProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart Data"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("id : ${pt!.CartList[index].id}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("user Id : ${pt!.CartList[index].userId}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("date : ${pt!.CartList[index].date}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("V : ${pt!.CartList[index].v}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("ProductId : ${pt!.CartList[index].productlist![0].productId}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("quantity : ${pt!.CartList[index].productlist![0].quantity}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
            );
          },
          itemCount: pt!.CartList.length,
        ),
      ),
    );
  }
}
