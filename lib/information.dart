import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  String label;
  String value;
  Information({Key? key, required this.label, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 70,
      margin: const EdgeInsets.only(bottom: 10, left: 30, right: 30, top: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        color: const Color.fromRGBO(245, 237, 237, .9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.values.last,
        children: [
          Container(
            height: 65,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 3, right: 3, top: 3),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 17,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          //  const SizedBox(width: 5),
          Container(
              alignment: Alignment.center,
              height: 65,
              width: 253,
              margin: const EdgeInsets.only(bottom: 3, right: 10, top: 3),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                value,
                style: const TextStyle(
                    color: Color.fromRGBO(115, 115, 115, 1), fontSize: 17),
                textAlign: TextAlign.start,
              ))
        ],
      ),
    );
  }
}
