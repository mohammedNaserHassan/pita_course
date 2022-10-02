import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pita_course/Data/DummuData.dart';
import 'package:pita_course/Models/HotelModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotelDetailsPage extends StatefulWidget {
  final HotelModel hotel;

  const HotelDetailsPage({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: hotels.length,
                itemBuilder: (context, index, real) {
                  final image = hotels[index].image;
                  return Container(
                    width: double.infinity,
                    height: 351,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(9, 9),
                              blurRadius: 16,
                              color: Colors.black12)
                        ]),
                  );
                },
                options: CarouselOptions(
                  height: 351,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, cont) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              PositionedDirectional(
                bottom: 20,
                start: 150,
                child: AnimatedSmoothIndicator(
                  activeIndex: activeindex,
                  count: hotels.length,
                  effect: SlideEffect(
                      dotColor: Colors.grey,
                      radius: 5,
                      activeDotColor: Colors.white,
                      dotHeight: 4),
                ),
              ),
              PositionedDirectional(
                top: 40,
                start: 40,
                child: Container(
                  width: 35,
                  height: 35,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEFEEEE)),
                ),
              )
            ],
          ),
          buildContainer('Platinum Grand'),
          Container(
            margin: EdgeInsetsDirectional.only(start: 20, top: 5),
            child: RichText(
                text: TextSpan(
                    text: 'Tokyo square, Japan -   ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    children: [
                  TextSpan(
                      text: 'Show in map',
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                ])),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 20, top: 20, bottom: 20),
            child: Text(
              'This upscale, contemporary hotel is 2 km from Hazrat Shahjalal \n International Airport and 11 km from Jatiyo Sangsad Bhaban, \n  the Bangladesh Parliament complex.',
              style: TextStyle(fontSize: 12, color: Color(0xff8492A7)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildText('Price'),
              buildText('Reviews'),
              buildText('Recently booked'),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('\$ ${widget.hotel.price}'),
              Text('${widget.hotel.rating} ⭐⭐⭐⭐'),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < profiles.length; i++)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 0),
                        child: Align(
                          widthFactor: 0.5,
                          child: Image.asset(
                            profiles[i],
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    Container(
                      width: 30,
                      height: 30,
                      color: primary,
                      child: Center(
                          child: Text(
                        '+5',
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
          buildContainer('Aminities'),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildColumn(),
                buildColumn(),
                buildColumn(),
                buildColumn(),
                buildColumn(),
                buildColumn(),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffEFEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(9, 9),
                          blurRadius: 16,
                          color: Colors.black12)
                    ]),
                child: Expanded(
                  child: SvgPicture.asset(
                    'assets/icons/heart.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                width: 251,
                height: 54,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(9, 9),
                      blurRadius: 16,
                      color: Colors.black12)
                ], borderRadius: BorderRadius.circular(10), color: primary),
                child: Center(
                  child: Text('Book now',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset('assets/icons/car.svg'),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Color(0xffEFEEEE),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16,
                  offset: Offset(9, 9),
                ),
              ]),
        ),
        Text(
          'Parking',
          style: TextStyle(color: Color(0xff8492A7), fontSize: 10),
        ),
      ],
    );
  }

  Container buildContainer(String title) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 20, top: 20),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Text buildText(String title) => Text(
        title,
        style: TextStyle(fontSize: 14, color: Color(0xff8492A7)),
      );
}
