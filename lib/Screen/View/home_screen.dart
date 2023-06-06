import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostProvider? pf;
  PostProvider? pt;

  @override
  void initState() {
    super.initState();
    Provider.of<PostProvider>(context, listen: false).Userjsondata();
  }

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<PostProvider>(context, listen: false);
    pt = Provider.of<PostProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User Data"),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 360,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[100]
              ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("id : ${pt!.UserList[index].id}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("name : ${pt!.UserList[index]. name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("email : ${pt!.UserList[index].email}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("phone : ${pt!.UserList[index].phone}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("username : ${pt!.UserList[index].username}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("website : ${pt!.UserList[index].website}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("streets : ${pt!.UserList[index].addressModel!.street}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("suite : ${pt!.UserList[index].addressModel!.suite}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("city : ${pt!.UserList[index].addressModel!.city}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("zipcode : ${pt!.UserList[index].addressModel!.zipcode}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("lat : ${pt!.UserList[index].addressModel!.geoModel!.lat}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("lng : ${pt!.UserList[index].addressModel!.geoModel!.lng}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("name : ${pt!.UserList[index].companyModel!.name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("bs : ${pt!.UserList[index].companyModel!.bs}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("catchPhrase : ${pt!.UserList[index].companyModel!.catchPhrase}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              );
            },
            itemCount: pt!.UserList.length),
      ),
    );
  }
}
