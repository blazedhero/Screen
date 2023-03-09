import 'package:flutter/material.dart';

class OtherSignIn extends StatelessWidget {
  const OtherSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ),
              Text("FacebooK",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.white))
            ],
          ),
        ),
        Container(
          width: 140,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffEA4335),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 25,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/google.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("Google",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.white))
            ],
          ),
        ),
      ],
    );
  }
}
