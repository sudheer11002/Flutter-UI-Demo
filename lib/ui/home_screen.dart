import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Container(
          height: 40,
          width: 40,
          color: Colors.transparent,
          child: Center(child: CircularProgressIndicator())),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5340c8),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: IconButton(
            alignment: Alignment.centerRight,
            icon: const Icon(Icons.menu,
                color: Colors.white), // set your color here
            onPressed: () {},
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      shadowColor: const Color(0xff5340c8),
                      color: const Color(0xff5340c8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      elevation: 8,
                      child: Container(
                        height: 80,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 50,
                                height: 50,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    //
                                  },
                                  elevation: 0.0,
                                  fillColor: Colors.white,
                                  child: const Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: Color(0xff5340c8),
                                  ),
                                  // padding: const EdgeInsets.all(2.0),
                                  shape: const CircleBorder(),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Wallet Balance",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$0",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 6, right: 8),
                                  child: Card(
                                    color: Colors.white,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color?>(
                                                (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.focused)) {
                                            return Colors.red;
                                          }
                                          return null; // Defer to the widget's default.
                                        }),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'ADD MONEY',
                                        style: TextStyle(
                                            color: Colors.purple[900],
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    //-----------------------------------------------------------View ----------------------------//

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xffffefba),
                              color: const Color(0xffffefba),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          //
                                        },
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/bitcoin.png'),
                                            color: Color(0xfff6983d),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Bitcoin",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xfff6983d),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xffd0eaff),
                              color: const Color(0xffd0eaff),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: SizedBox(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          //
                                        },
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/dash.png'),
                                            color: Color(0xff2c88f4),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Dash",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xff2c88f4),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //-----------------------------------------------------------View ----------------------------//

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xffd8ccff),
                              color: const Color(0xffd8ccff),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          //
                                        },
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/doge.png'),
                                            color: Color(0xff714eee),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Doge",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xff714eee),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xfffad7fa),
                              color: const Color(0xfffad7fa),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () => null,
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/ethereum.png'),
                                            color: Color(0xffea42bb),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Ethereum",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xffea42bb),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //-----------------------------------------------------------View ----------------------------//

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xffacebd4),
                              color: const Color(0xffacebd4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          //
                                        },
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/litecoin.png'),
                                            color: Color(0xff379b73),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Litecoin",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xff379b73),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            child: Card(
                              shadowColor: const Color(0xfffed7c2),
                              color: const Color(0xfffed7c2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              elevation: 8,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          //
                                        },
                                        elevation: 0.0,
                                        fillColor: const Color(0xFFF5F6F9),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/ripple.png'),
                                            color: Color(0xfffb7d65),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Ripple",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xfffb7d65),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
