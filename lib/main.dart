import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold( 
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: const Text( 
          "تطابق صورة",
          style: TextStyle( 
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var number = 2;
  var numberRight = 1;
   
  void changeImage(){
     number = Random().nextInt(8) + 1;
     numberRight = Random().nextInt(8) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
      children: [ 
        Text(
          number == numberRight ? "رائع!! لقد نجحت" :
          "حاول مرة أخرى",
          style: const TextStyle( 
            fontSize: 42.0,
            color: Colors.white
          ),
        ),
        Row( 
          children: [ 
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  child: Image.asset("images/image-$number.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  child: Image.asset("images/image-$numberRight.png"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
