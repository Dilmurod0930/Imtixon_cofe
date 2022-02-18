import 'package:exam/models/model.dart';
import 'package:exam/screens/imtixon3_page.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 279),
        itemCount: Malumot.image.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF362C36),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    Malumot.image[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        bottomRight: Radius.circular(20)),
                                  ),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.star,
                                          size: 20, color: Colors.yellow),
                                      Text(
                                        "46",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          Malumot.name[index],
                          style: const TextStyle(
                            fontSize: 26,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.21,
                            decoration: const BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "\$${49 + ((index + 3) * 25)}",
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(),
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.10,
                              child: const Center(
                                  child: Icon(
                                Icons.add,
                                size: 40,
                              )),
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Asosiy(index )),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
