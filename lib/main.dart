import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

void main(List<String> args){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );



  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.amber.shade500 ,
        elevation: double.infinity,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,


          children: [
            SafeArea(child: SizedBox(height: double.minPositive , width: double.minPositive,), ),
            Text('Crypto' , style: TextStyle( fontSize: 25 , fontWeight: FontWeight.w900),),
            SizedBox(width:double.minPositive , height: double.minPositive,),
            Text('Status' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
            SizedBox(width:double.minPositive , height: double.minPositive,),
            Icon(CryptoFontIcons.BTC_ALT , size: 30,)
          ],
        ),
      ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height:220,
              width: 420,
              child: Card(
                elevation: 10,
                color: Colors.black,

                child: Column(
                    children: [
                      Icon(
                        CryptoFontIcons.BTC,
                        color: Colors.grey.shade200,
                        size: 30,
                      ),
                      Text(
                        title,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.grey.shade200
                      ),
                      ),
                      const SizedBox(height: 5,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                    'Lowest in day',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight:FontWeight.w900,
                                    color: Colors.red
                                  ),
                                ),
                                //SizedBox(height:5 ,),
                                // Text('20000',
                                //   style: TextStyle(
                                //     fontSize: 20,
                                //     fontWeight: FontWeight.w900,
                                //     color: Colors.green
                                //   ),
                                // ),
                                Row(
                                  children: [
                                    CustomCryptoColumn(
                                      title: "highest in day",
                                      price: ,
                                    ),
                                    CustomCryptoColumn(
                                      title: "avg in day",
                                      price: 21000,
                                    ),
                                    CustomCryptoColumn(
                                      title: 'lowest in day',price: 20000)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                ),
              ),
            )
          ],
        ),

    );
  }
}
class CustomCryptoColumn extends StatelessWidget {
  final IconData icon;
  final String title;
  final double price;
  final double highday;
  final double lowday;

  const CustomCryptoColumn(
      {super.key,
        required this.price,
        required this.title,
        required this.highday,
        required this.lowday,
        required this.icon,

      }
      );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


