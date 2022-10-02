import 'package:flutter/material.dart';

import '../Data/DummuData.dart';
import '../Models/HotelModel.dart';
class HotelWidget extends StatelessWidget {
  HotelModel hotel;
   HotelWidget(this.hotel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 182,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color: Color(0xffEFEEEE),
          boxShadow: [
            BoxShadow(
                offset: Offset(9,9),
                blurRadius: 26,
                color: Color(0xffFFFFFF)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image.asset(hotel.image),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5.0),
           child: Text(hotel.name,style: TextStyle(fontSize: 12),),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5.0),
           child: Text(hotel.details,style: TextStyle(color: Colors.grey,fontSize: 10),),
         ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
           children: [
             Text('\$ ${hotel.price}/night',style: TextStyle(color: primary),),
             Spacer(),
             Text('${hotel.rating}⭐',style: TextStyle(color: primary)),
           ],
           ),
        )
       ],
      ),
    );
  }
}
