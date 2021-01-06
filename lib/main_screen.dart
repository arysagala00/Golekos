import 'package:flutter/material.dart';
import 'package:submission_pemula/detail_screen.dart';
import 'package:submission_pemula/model/kos_model.dart';
import 'package:submission_pemula/model/tenant_model.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F6FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              width: 24.0,
                              height: 24.0,
                              child: Image.asset('images/menu.png')),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 140.0,
                            child: RichText(
                                text: TextSpan(
                                    text: 'Hello, ',
                                    style: TextStyle(
                                        color: Color(0xFF040507),
                                        fontSize: 24.0),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: 'Ary Sagala',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0))
                                ])),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-19/s150x150/67724973_608422369686557_7927491914440376320_n.jpg?_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=mWT0o86zPPwAX-LpG49&tp=1&oh=471f6b77b9a9e57aa646dcec793b7803&oe=6016D49C'),
                        backgroundColor: Colors.transparent,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0)),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        hintText: 'Find your next home',
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    padding: EdgeInsets.all(15.0),
                    height: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/bg.png'),
                            fit: BoxFit.cover)),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'images/payment.png',
                          width: 60.0,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Payment Safety',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            Text(
                              'Kindly only use our official card',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 27.0,
                ),
                Text(
                  'Most People Go',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF040507),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 270,
                  child: ListView(
                      shrinkWrap: true,
                      children: kosList.map((kos) {
                        return FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(kos: kos);
                            }));
                          },
                          child: Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          width: 60.0,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              child: Image.asset(kos.image))),
                                      SizedBox(
                                        width: 12.0,
                                      ),
                                      Container(
                                          width: 140.0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(kos.name),
                                              Text(kos.category)
                                            ],
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(kos.price),
                                      Text('\u002F month')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var kosList = [
  KosModel(
      image: 'images/house1.jpg',
      name: 'Fukko Cozy',
      category: 'Wanita',
      price: '\u0024 55',
      beds: '3',
      bathrooms: '2',
      kitchen: '1',
      tenant: [
        TenantModel(
            name: 'Masayoshi',
            comment: 'Cozy for Freelancer',
            picture: 'images/tenant1.png'),
        TenantModel(
            name: 'Aken Tell',
            comment: 'Feels like at home',
            picture: 'images/tenant2.png')
      ]),
  KosModel(
      image: 'images/house2.jpg',
      name: 'Blue Fast',
      category: 'Umum',
      price: '\u0024 21',
      beds: '2',
      bathrooms: '2',
      kitchen: '-',
      tenant: [
        TenantModel(
            name: 'Subaru',
            comment: 'Cozy for Worker',
            picture: 'images/tenant1.png'),
        TenantModel(
            name: 'Roger',
            comment: 'Feels like at home',
            picture: 'images/tenant2.png')
      ]),
  KosModel(
      image: 'images/house3.jpg',
      name: 'Jamaixa IIX',
      category: 'Pria',
      price: '\u0024 49',
      beds: '1',
      bathrooms: '1',
      kitchen: '1',
      tenant: [
        TenantModel(
            name: 'Masayoshi',
            comment: 'Amazing',
            picture: 'images/tenant1.png'),
        TenantModel(
            name: 'Bob',
            comment: 'Nice place to spend time',
            picture: 'images/tenant2.png')
      ]),
  KosModel(
      image: 'images/house4.jpg',
      name: 'Yaka Past',
      category: 'Wanita',
      price: '\u0024 82',
      beds: '3',
      bathrooms: '3',
      kitchen: '2',
      tenant: [
        TenantModel(
            name: 'Erika',
            comment: 'Calming place',
            picture: 'images/tenant1.png'),
        TenantModel(
            name: 'Aken Tell',
            comment: 'Feels like at home',
            picture: 'images/tenant2.png')
      ]),
];
