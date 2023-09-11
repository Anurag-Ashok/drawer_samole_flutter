import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset("img/mountain-bike.png"),
              decoration: BoxDecoration(color: Colors.amber[300]),
              accountName: Text(
                "Traveling",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'baloo'),
              ),
              accountEmail: Text(
                "www.traveladdict.in",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
              onTap: () {},
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.pedal_bike,
              size: 30,
            ),
            title: Text(
              "Cycling",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.directions_bus,
              size: 30,
            ),
            title: Text(
              "Bus",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.flight_takeoff_outlined,
              size: 30,
            ),
            title: Text(
              "Plane",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.8, color: Colors.grey))),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.login_sharp,
              size: 30,
            ),
            title: Text(
              "Login",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.8, color: Colors.grey))),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Communicate",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 30,
            ),
            title: Text(
              "Share",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.rate_review,
              size: 30,
            ),
            title: Text(
              "Rate us",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
            onTap: () {},
          ),
        ]),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Text(
              "Traveling",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'baloo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 90),
            child: Text(
              "Start a new journey",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Image.asset(
              "img/mountain-bike.png",
              width: 350,
              height: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: InkWell(
                      child: Container(
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "img/walk.png",
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                              Text(
                                "Walking",
                                style: TextStyle(
                                    fontFamily: "aclonica",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 3,
                              offset: Offset(0, 3))
                        ]),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: InkWell(
                      child: Container(
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "img/sailing-boat.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Text(
                                  "Boat",
                                  style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 10, top: 20),
                    child: InkWell(
                      child: Container(
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "img/taxi.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Text(
                                  "Taxi",
                                  style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 20, top: 20),
                    child: InkWell(
                      child: Container(
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "img/train.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Text(
                                  "Train",
                                  style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 10, top: 20),
                    child: InkWell(
                      child: Container(
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "img/bus.png",
                                    width: 110,
                                    height: 110,
                                  ),
                                ),
                                Text(
                                  "Bus",
                                  style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 20, top: 20),
                    child: InkWell(
                      child: Container(
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "img/airplane.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Text(
                                  "Flight",
                                  style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
