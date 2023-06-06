import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/cart_provider.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:provider/provider.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  CartProvider? pf;
  CartProvider? pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<CartProvider>(context, listen: false);
    pt = Provider.of<CartProvider>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 110,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Id : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("name : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Username : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("email : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    height: 200,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text("${pt!.jsonList[index]['id']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        // Text("${pt!.jsonList[index]['name']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        // Text("${pt!.jsonList[index]['username']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        // Text("${pt!.jsonList[index]['email']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),),
                ],
              ),
              SizedBox(height: 20),
              Text("address  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("street : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("suite : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("city : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("zipcode : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Expanded(child: Container(
                        height: 200,
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text("${pt!.jsonList[index]['address']['street']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            // Text("${pt!.jsonList[index]['address']['suite']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            // Text("${pt!.jsonList[index]['address']['city']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            // Text("${pt!.jsonList[index]['address']['zipcode']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("geo  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lat : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("lng : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                        ),
                      ),
                      Expanded(child: Container(
                        height: 100,
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text("${pt!.jsonList[index]['address']['geo']['lat']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            // Text("${pt!.jsonList[index]['address']['geo']['lng']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                        ),
                      ),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
