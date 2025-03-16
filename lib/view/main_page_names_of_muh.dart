import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
// import 'package:names_of_allah_muhammad/view/main_page_names_of_muh.dart';
import 'package:names_of_allah_muhammad/view/names_of_muh.dart';


// ignore: must_be_immutable
class MainPageNamesOfMuh extends StatelessWidget {
   const MainPageNamesOfMuh({super.key});
 @override
  Widget build(BuildContext context) {
  var  mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Container(height:mediaQuery.size.height,width: mediaQuery.size.width,
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255, 9, 253, 213),Color.fromARGB(255, 0, 89, 255)])),
          child: Column(
            children: [
            Flexible(
            child: CardSwiper(onUndo: (previousIndex, currentIndex, direction) => true,threshold: DateTime.april,
              
              cardsCount: list["Names Of Muhammad Sawal"]!.length,
              cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
               Container(height: mediaQuery.size.height * 0.8,width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(colors: [Color.fromARGB(255, 42, 71, 238),Color.fromARGB(255, 54, 206, 244)])
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: BorderSide.strokeAlignCenter),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(list["Names Of Muhammad Sawal"]![index]["No."] as String, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                  ),
                                  Text(list["Names Of Muhammad Sawal"]![index]["Arabic Name"] as String, style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w100,fontFamily: "ttf")),
                                  Text(list["Names Of Muhammad Sawal"]![index]["Transliteration"] as String, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: "ttf3")),
                                  Text(list["Names Of Muhammad Sawal"]![index]["English Meaning"] as String, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: "ttf3")),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 49,left:BorderSide.strokeAlignCenter,right:BorderSide.strokeAlignCenter),
                                    child: Text(list["Names Of Muhammad Sawal"]![index]["Urdu Meaning"] as String, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: "ttf1"),textAlign: TextAlign.right,),
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