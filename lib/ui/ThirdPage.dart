import 'package:flutter/material.dart';
import 'package:pita_course/Data/DummuData.dart';

import '../Shared/HotHotelWidget.dart';
import '../Shared/HotelWidget.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             ListTile(
               contentPadding: EdgeInsetsDirectional.only(start: 20,end: 10,top: 20),
               title: Text('Hello Pragathesh',style: TextStyle(color: Colors.grey,fontSize: 16),),
               subtitle: buildText('Find your hotel',size: 24),
               trailing: Image.asset('assets/images/profile.png'),
             ),
             Container(
               width: 360,
               height: 50,
               margin: EdgeInsetsDirectional.only(start: 15,end: 20,top: 20,bottom: 17),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Color(0xffEFEEEE),
                   boxShadow: [
                     BoxShadow(
                         offset: Offset(9, 9),
                         blurRadius: 16,
                         color: Colors.black12)
                   ]
               ),
               child: TextField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: Icon(Icons.search,color: Color(0xffC1C1C1),),
                   hintText: 'Search for hotels',
                   hintStyle: TextStyle(color: Colors.grey)
                 ),
               ),
             ),
            ListTile(leading:  buildText('Popular hotels'),),
             Container(
               margin: EdgeInsetsDirectional.only(start: 10),
               height: 173,
               child: ListView.builder(
                 itemCount: hotels.length,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index)=>HotelWidget(hotels[index]),
               ),
             ),
             ListTile(
               leading: buildText('Hot packages'),
               trailing: Text('View All',style: TextStyle(color: Color(0xff003AA8,),fontSize: 14),),
             ),
             ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: hotels.length,
               itemBuilder: (context,index)=>HotHotelWidget(hotels[index]),
             )
           ],
         ),
       ),
      ),
    );
  }

  Text buildText(String title,{double size=20}) => Text(title,style: TextStyle(fontSize: size,color: Colors.black),);
}
