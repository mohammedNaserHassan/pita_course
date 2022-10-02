import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pita_course/Models/HotelModel.dart';
import 'dart:math' as math;

import '../ui/HotelDetailsPage.dart';

class HotHotelWidget extends StatelessWidget {
  HotelModel hotel;

  HotHotelWidget(this.hotel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 335,
      height: 124,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(9, 9),
              blurRadius: 16,
            )
          ]),
      child: Row(
        children: [
          Image.asset(
            'assets/images/hotelStar.png',
            fit: BoxFit.fill,
            width: 98,
            height: 124,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  hotel.name,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  hotel.details,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '\$ ${hotel.price}/night',
                  style: TextStyle(color: Color(0xff060B92)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Expanded(
                      child: SvgPicture.asset(
                        'assets/icons/car.svg',
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Expanded(
                      child: SvgPicture.asset(
                        'assets/icons/fi.svg',
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Expanded(
                      child: SvgPicture.asset(
                        'assets/icons/wi.svg',
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Expanded(
                      child: SvgPicture.asset(
                        'assets/icons/internet.svg',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => HotelDetailsPage(
                        hotel: hotel,
                      )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 47,
              height: 105,
              decoration: BoxDecoration(
                  color: Color(0xff003AA8),
                  borderRadius: BorderRadius.circular(10)),
              child:  RotatedBox(
                quarterTurns: 3,
                child: Center(
                  child: Text(
                      'Book now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
