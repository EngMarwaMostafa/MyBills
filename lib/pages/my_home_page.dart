import 'package:bills/components/colors.dart';
import 'package:bills/pages/widgets/buttons.dart';
import 'package:bills/pages/widgets/large_buttons.dart';
import 'package:bills/pages/widgets/text_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePge extends StatefulWidget {
  const MyHomePge({Key? key}) : super(key: key);

  @override
  State<MyHomePge> createState() => _MyHomePgeState();
}

class _MyHomePgeState extends State<MyHomePge> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curvedImageContainer(),
          _buttonContainer(),
        _textContainer(),
        ],
      ),
    );
  }
  _buttonContainer() {
    return Positioned(
        bottom: 0,
        right: 52,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 240,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                          color: Color(0xFFeef1f4).withOpacity(0.7),
                          width: MediaQuery.of(context).size.width,
                         height: MediaQuery.of(context).size.height-300,
                        )),
                        Positioned(
                          top: 15,
                            right:58,
                            child: Container(
                              padding: EdgeInsets.only(top: 15,bottom: 25),
                          width: 60,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: AppColor.mainColor,
                          ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppButtons(icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: (){
                                    Navigator.pop(context);
                                  },),
                                  AppButtons(icon: Icons.history,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  text: 'Add Bill',
                                  ),
                                  AppButtons(icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  text:'History',
                                  ),
                                ],
                              ),
                        )),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/lines.png',
                ),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 1),
                  color: Color(0xFF11324d).withOpacity(0.2),
                ),
              ],
            ),
          ),
        ));
  }
  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
      ),
    );
  }
  _curvedImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 5,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/curve.png'),
          ),
        ),
      ),
    );
  }
  _listBills() {
    return Positioned(
      top: 320,
      left: 0,
      right: 0,
      bottom: 60,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.only(top: 20, right: 20),
                height: 130,
                width: MediaQuery.of(context).size.width - 20,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius: 20.0,
                        spreadRadius: 10,
                      ),
                    ]),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                 left: 5,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                  left: 18,
                                ),
                                child: Row(
                                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  width: 3,
                                                  color: Colors.grey,
                                                ),
                                                image: const DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/brand1.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'KenGen Power',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColor.mainColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'ID:84656',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColor.idColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedText(
                                          text: 'Auto pay on 24th May 18',
                                          color: AppColor.green,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: SizedBox(
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: AppColor
                                                      .selectBackground),
                                              child: Center(
                                                child: Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColor.selectColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              '\$1248.00',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color: AppColor.mainColor,
                                              ),
                                            ),
                                            Text(
                                              'Due in 3 days',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.idColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 5,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: AppColor.halfOval,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                bottomLeft:
                                                    Radius.circular(30)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
  _payButton() {
    return Positioned(
        bottom: 10,
        child: AppLargeButton(
          text: 'Pay all bills',
          textColor: Colors.white,
        ));
  }
  _textContainer(){
    return Stack(
      children: [
        const Positioned(
            left: 0,
            top: 100,
            child: Text(
              'My Bills',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293952),
              ),
            )
        ),
        const Positioned(
            left: 40,
            top: 80,
            child: Text(
              'My Bills',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
        ),
      ],
    );
  }

}


