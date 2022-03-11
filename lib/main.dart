import 'package:assignment1/information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(157, 89, 235, 1),
            title: const Text('عاصمة فلسطين'),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Image.asset('assets/images/img.jpg'),
                const SizedBox(width: 30),
                const Text(
                  "مدينة القدس ",
                  style: TextStyle(
                      fontSize: 25, color: Color.fromRGBO(115, 115, 115, 1)),
                ),
                Information(label: "الاسم", value: "القدس"),
                Information(label: 'المساحة', value: "125 كم "),
                Information(label: "السكان", value: "358000 نسمة"),
                Information(
                  label: "الدولة",
                  value: "فلسطين",
                ),
                Information(
                  label: "اسم الطالب",
                  value: "عمر أحمد علي",
                ),
              ],
            ),
          )),
    );
  }
}
