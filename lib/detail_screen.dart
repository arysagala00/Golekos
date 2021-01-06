import 'package:flutter/material.dart';
import 'package:submission_pemula/model/kos_model.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(242, 246, 253, .1),
  100: Color.fromRGBO(242, 246, 253, .2),
  200: Color.fromRGBO(242, 246, 253, .3),
  300: Color.fromRGBO(242, 246, 253, .4),
  400: Color.fromRGBO(242, 246, 253, .5),
  500: Color.fromRGBO(242, 246, 253, .6),
  600: Color.fromRGBO(242, 246, 253, .7),
  700: Color.fromRGBO(242, 246, 253, .8),
  800: Color.fromRGBO(242, 246, 253, .9),
  900: Color.fromRGBO(242, 246, 253, 1),
};

class DetailScreen extends StatelessWidget {
  final KosModel kos;
  DetailScreen({@required this.kos});
  MaterialColor customColor = MaterialColor(0xFFF2F6FD, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: customColor),
      home: Scaffold(
        body: SafeArea(
            child: Stack(
          children: <Widget>[
            FractionallySizedBox(
              heightFactor: 0.44,
              widthFactor: 1,
              child: Container(
                  child: Image.asset(
                kos.image,
                fit: BoxFit.cover,
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(22.0, 30, 22, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: IconButton(
                                icon: Icon(Icons.chevron_left),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          FavoriteButton()
                        ],
                      ),
                    )),
                Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(22, 22, 22, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          kos.name,
                                          style: TextStyle(
                                              color: Color(0xFF040507),
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          kos.category,
                                          style: TextStyle(
                                              color: Color(0xFFA5A5A5),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFDB92C),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFDB92C),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFDB92C),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFDB92C),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFECF0F6),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, right: 22),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Room Specs',
                                          style: TextStyle(
                                              color: Color(0xFF040507),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                    width: 28,
                                                    margin: EdgeInsets.only(
                                                        right: 4),
                                                    child: Image.asset(
                                                        'images/bed.png')),
                                                Text(
                                                  kos.beds,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color(0xFF040507)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Master Bed',
                                              style: TextStyle(
                                                  color: Color(0xFFA5A5A5),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                    width: 28,
                                                    margin: EdgeInsets.only(
                                                        right: 4),
                                                    child: Image.asset(
                                                        'images/bathroom.png')),
                                                Text(
                                                  kos.bathrooms,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color(0xFF040507)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text('Bathrooms',
                                                style: TextStyle(
                                                    color: Color(0xFFA5A5A5),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                    width: 28,
                                                    margin: EdgeInsets.only(
                                                        right: 4),
                                                    child: Image.asset(
                                                        'images/kitchen.png')),
                                                Text(
                                                  kos.kitchen,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color(0xFF040507)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text('Kitchen',
                                                style: TextStyle(
                                                    color: Color(0xFFA5A5A5),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, right: 22),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text(
                                          'Happy Tenant',
                                          style: TextStyle(
                                              color: Color(0xFF040507),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      height: 100,
                                      child: ListView(
                                          children: kos.tenant.map((tenant) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Column(
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            backgroundImage:
                                                                AssetImage(tenant
                                                                    .picture),
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(tenant.name,
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xFF040507),
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Text(tenant.comment,
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xFFA5A5A5),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300))
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text('5/5'),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xFFFDB92C),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }).toList()),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(kos.price,
                                                style: TextStyle(
                                                    color: Color(0xFF040507),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text('\u002Fmonth',
                                                style: TextStyle(
                                                    color: Color(0xFFA5A5A5),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 6,
                                      child: ColoredBox(
                                        color: Color(0xFF29D5F8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'BOOKING NOW',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 24),
                                            ),
                                          ],
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      ),
                    )),
              ],
            )
          ],
        )),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: IconButton(
        icon: isFavorite
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(Icons.favorite_border),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
