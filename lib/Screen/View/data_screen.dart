import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:provider/provider.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  PostProvider? pf;
  PostProvider? pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<PostProvider>(context, listen: false);
    pt = Provider.of<PostProvider>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Id : ${pt!.jsonList[index]['id']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("title : ${pt!.jsonList[index]['title']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Body : ${pt!.jsonList[index]['body']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    ));
  }
}
