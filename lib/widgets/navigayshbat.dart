import 'package:exam/screens/imtixon3_page.dart';
import 'package:exam/screens/imtixon4_page.dart';
import 'package:exam/screens/imtixon5_page.dart';
import 'package:flutter/material.dart';
class MynavigayshnBar extends StatelessWidget {
  const MynavigayshnBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
                SizedBox(
                  height: 74,
                  child: Container(
                    height: 12,
                    width: 454,
                    decoration: const BoxDecoration(
                      color: Color(0xFF22151F),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Padding(
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Asosiy(0)),
                          );
                        },
                        icon: const Icon(
                          Icons.home,
                          size: 35,
                          color: Colors.amber,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SahifaUch()),
                          );
                        },
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 35,
                          color: Colors.white54,
                        ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SahifaIkki()),
                          );
                        },
                        icon: const Icon(
                          Icons.favorite,
                          size: 35,
                          color: Colors.white54,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(
                          Icons.add_alert,
                          size: 35,
                          color: Colors.white54,
                        )),
                  ),
                    ],),
                  ),
                );
  }
}