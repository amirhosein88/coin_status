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
    return MaterialApp(
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
        
        backgroundColor: Colors.lightGreenAccent,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,

          children: [
            SafeArea(child: SizedBox(height: 20), ),
            Text('Crypto' , style: TextStyle( fontSize: 40),),
            SizedBox(width: 10,),
            Text('Currency' , style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
        body: Column(
          children: [
            SizedBox(
              height: 250,
              width: 400,
              child: Card(
                elevation: 10,
                color: Colors.white60,

                child: Column(
                    children: [
                      Icon(
                        CryptoFontIcons.BTC,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        'BTC',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.amber
                      ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                  'Lowest in day',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight:FontWeight.w900,
                                  color: Colors.pink
                                ),
                              ),
                              SizedBox(height: 4,

                              ),
                              Text('20000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                                ),
                              ),
                              Row(
                                children: [
                                  CustomCryptoColumn(
                                    title: "highest in day",
                                    price: 22000,
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
  final String title;
  final double price;
  const CustomCryptoColumn(
      {super.key,
        required this.price,
        required this.title,
      }
      );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


