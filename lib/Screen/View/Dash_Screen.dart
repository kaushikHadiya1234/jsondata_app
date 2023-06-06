import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/cart_provider.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:provider/provider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  PostProvider? pf;
  PostProvider? pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<PostProvider>(context, listen: false);
    pt = Provider.of<PostProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, 'post');
            }, child: Text("Post Data")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, 'user');
            }, child: Text("User Data"))
          ],
        ),
      ),
    ));
  }
}
