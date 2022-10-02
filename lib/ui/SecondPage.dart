import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          actions: [
            TextButton(
              child: Text(
                'مشاركة',
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {},
            ),
          ],
          leading: TextButton(
              child: Text('عودة',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    'انتعاش في قيمة العملات الرقمية الرئيسة   تمثلت بارتفاع كل من البتكوين و اللثيريم'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '25 يناير 2018',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Image.asset(
                'assets/images/bitcoin.PNG',
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NewWidget('مشاركة عبر فيسبوك'),
                    NewWidget('مشاركة عبر تويتر'),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                      child: Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    "من البيان والتبيين الى البتاع والتبتيع أحمد فؤاد نجم، البلاغة، والرأسمال الثقافي عيش البورجوازية عيش قلق، تتفجّر فيه الفتن والفورات، تطغى عليه العيون الحاسدة والعوارض الفاسدة، تتصارع طوائفه ليس صراع الثيران: بل صراع الأرانب والأسود (وهي بدورها أصناف وطبقات: الغضنفر، اللبوة، الشبل، السبع، وأخيراً وليس آخراً الفصل السوري..). إلا أنه عيش قد تطورت فيه آليات الكبت، الى جانب أجهزة الحكم والصمت، علّه يواظب على رتابته الرزينة، وكبائره المشينة الحزينة. لم نجئ الى هنا اليوم من أجل مقاومة هذه الجرائم، لم نأتي كي نتصدّى لها في القرى كما في العواصم. كما أننا ليس قصدنا أن ننصّب الحاج أحمد قائدنا العظيم، بطلنا الحكيم، في مواجهتنا المظالم المعروفة والمصاعب المعهودة، المتفق عليها.. إنما وجدنا في بعض ما كتبه، ليس باباً بل أكرة باب، وليس مفتاحاً بل بطاقة مالية توافي بالمهمة، وقول يا مسهّل!"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'شعبية البتكوين',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    "من البيان والتبيين الى البتاع والتبتيع أحمد فؤاد نجم، البلاغة، والرأسمال الثقافي عيش البورجوازية عيش قلق، تتفجّر فيه الفتن والفورات، تطغى عليه العيون الحاسدة والعوارض الفاسدة، تتصارع طوائفه ليس صراع الثيران: بل صراع الأرانب والأسود (وهي بدورها أصناف وطبقات: الغضنفر، اللبوة، الشبل، السبع، وأخيراً وليس آخراً الفصل السوري..). إلا أنه عيش قد تطورت فيه آليات الكبت، الى جانب أجهزة الحكم والصمت، علّه يواظب على رتابته الرزينة، وكبائره المشينة الحزينة. لم نجئ الى هنا اليوم من أجل مقاومة هذه الجرائم، لم نأتي كي نتصدّى لها في القرى كما في العواصم. كما أننا ليس قصدنا أن ننصّب الحاج أحمد قائدنا العظيم، بطلنا الحكيم، في مواجهتنا المظالم المعروفة والمصاعب المعهودة، المتفق عليها.. إنما وجدنا في بعض ما كتبه، ليس باباً بل أكرة باب، وليس مفتاحاً بل بطاقة مالية توافي بالمهمة، وقول يا مسهّل!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title;

  const NewWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
