import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:names_of_allah_muhammad/view/names_of_allah.dart';


// ignore: must_be_immutable
class MainPage extends StatelessWidget {
   MainPage({super.key});

@override
  Widget build(BuildContext context) {
  var  mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Container(height:mediaQuery.size.height,width: mediaQuery.size.width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [const Color.fromARGB(255, 9, 253, 213),const Color.fromARGB(255, 0, 89, 255)])),
          child: Column(
            children: [
            Flexible(
            child: CardSwiper(onUndo: (previousIndex, currentIndex, direction) => true,threshold: DateTime.april,
              
              cardsCount: list["Names Of Allah"]!.length,
              cardBuilder: (context, index, percentThresholdX, percentThresholdY) => Container(height: mediaQuery.size.height * 0.8,width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 42, 71, 238),const Color.fromARGB(255, 54, 206, 244)])
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: BorderSide.strokeAlignCenter),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(list["Names Of Allah"]![index]["No."] as String, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                  ),
                                  Text(list["Names Of Allah"]![index]["Arabic Name"] as String, style: TextStyle(fontSize: 60, fontWeight: FontWeight.w100,fontFamily: "ttf")),
                                  Text(list["Names Of Allah"]![index]["Transliteration"] as String, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: "ttf3")),
                                  Text(list["Names Of Allah"]![index]["English Meaning"] as String, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: "ttf3")),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 49,left:BorderSide.strokeAlignCenter,right:BorderSide.strokeAlignCenter),
                                    child: Text(list["Names Of Allah"]![index]["Urdu Meaning"] as String, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: "ttf1"),textAlign: TextAlign.right,),
                                  ),
                  ],
                ),
                ),
                  ),
                  
                    ),
                    
                   ) ],
           
          ),
        ),
      ),
    );
  }
}