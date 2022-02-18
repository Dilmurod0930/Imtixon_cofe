import 'package:exam/models/carta_models.dart';
import 'package:exam/models/model.dart';
import 'package:exam/screens/imtixon3_page.dart';
import 'package:exam/screens/imtixon5_page.dart';
import 'package:exam/widgets/grid_view_page.dart';
import 'package:exam/widgets/navigayshbat.dart';
import 'package:flutter/material.dart';

class SahifaIkki extends StatefulWidget {
  const SahifaIkki({Key? key}) : super(key: key);

  @override
  _SahifaIkkiState createState() => _SahifaIkkiState();
}

class _SahifaIkkiState extends State<SahifaIkki> {
  List a = [0, 0, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff362C36),
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                // !  App Bar joyida
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "déjà",
                          style: TextStyle(color: Colors.white, fontSize: 36),
                        ),
                        Text(
                          "Brew",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage(
                          'assets/imags/avatar.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      radius: 40,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                //!  Pusk kantenir tayor
                Container(
                  height: 50,
                  width: 358,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFF171017),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "  Browse your favourite coffee...",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                //! joy tashlashga
                const SizedBox(
                  height: 21,
                ),
                //!-----------------
                _mygridview(),
                const Divider(thickness: 0.5, color: Colors.black),
                _navigayshnBar(),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 440,
                    child: ListView.builder(
                        itemCount: Karta.name.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Container(
                                alignment: Alignment.center,
                                height: 164,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        Malumot.image[index],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            Karta.name[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text(
                                            Karta.text[index],
                                            style: const TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 450,
                  child: _order_ListView(),
                ),
                Container(height: 313,width: 317, decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: NetworkImage(Malumot.image[2]),fit: BoxFit.cover)),),
              
               const  Center(
                  heightFactor: 4,
                  
                  child: Text('Enjoy your cofee', style: TextStyle(color: Colors.white, fontSize: 22),),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  MynavigayshnBar _navigayshnBar() => MynavigayshnBar();
  MyGridView _mygridview() => MyGridView();

  ListView _order_ListView() {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(2),
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
                    padding: EdgeInsets.only(bottom: 12),
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
                              size: 30,
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
                              size: 30,
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
