import 'package:exam/models/model.dart';
import 'package:exam/widgets/navigayshbat.dart';
import 'package:exam/widgets/order_tanish.dart';
import 'package:flutter/material.dart';

class SahifaUch extends StatefulWidget {
  const SahifaUch({Key? key}) : super(key: key);

  @override
  _SahifaUchState createState() => _SahifaUchState();
}

class _SahifaUchState extends State<SahifaUch> {
  List a = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 0),
            child: Text(
              "Order",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white54,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: _order_ListView(),

          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 25,
                              left: 4,
                            ),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.brown,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),Row(children: [
             _tanish_narxlar(),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 10, top: 15, bottom: 20),
                      child: Text(
                        "\$${(a[0] * 25) + (a[1] * 74) + (a[2] * 99) + 49 + 64.87}",
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],),
                
                _navigayshBar(),
              ],
            ),
            
          ),
        ],
      ),
    );
  }

  MyOrderTanish _tanish_narxlar() => MyOrderTanish();
  MynavigayshnBar _navigayshBar() => MynavigayshnBar();

  ListView _order_ListView() {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(6),
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.height * 0.11,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(Malumot.image[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 8,
                          ),
                          child: Text(
                            "Caappucino",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 8,
                          ),
                          child: Text(
                            Malumot.name[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 8,
                          ),
                          child: Text(
                            "\$${49 + (index * 25)}",
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: a[index] == 0
                                ? null
                                : () {
                                    a[index] -= 1;
                                    setState(() {});
                                  },
                            icon: const Icon(
                              Icons.remove_circle,
                              size: 35,
                              color: Colors.white54,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4.5, top: 0),
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            "${a[index]}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: a[index] == 9
                                ? null
                                : () {
                                    a[index] += 1;
                                    setState(() {});
                                  },
                            icon: const Icon(
                              Icons.add_circle,
                              size: 35,
                              color: Colors.white54,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            onHorizontalDragEnd: (v) {
              // son -= 1;
            },
          );
        });
  }
}
