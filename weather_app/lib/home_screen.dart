// import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:weather_app/get_location.dart';
import 'package:weather_app/weather_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  var client = WeatherData();
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";

  dynamic data;

  info() async {
    // var position = await getLocation();
    data = await client.getData("Delhi");
    // setState(() {});
    // print(data.toString());
    return data;
  }

  @override
  Widget build(BuildContext context) {
    // const cscColor = Color(0xff081b25);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: ((context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.waiting) {
          //   return const Center(child: CircularProgressIndicator());
          // } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(top: 30),
                    height: size.height * 0.75,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff955cd1),
                            Color(0xff3fa2fa),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.2, 0.85]),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "${data?.cityName}",
                          style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Monday, 03 March",
                          style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 15),
                        ),
                        Image.network(
                          "http:${data?.icon}",
                          width: size.width * 0.2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sunny",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${data?.temp}",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 75,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/wind.png",
                                    width: size.width * 0.15,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${data?.wind}",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Wind",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/wind.png",
                                    width: size.width * 0.15,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${data?.humidity}",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Humidity",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/wind.png",
                                    width: size.width * 0.15,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${data?.windDir}",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Wind Direction",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Gust",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${data?.gust}",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 23,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Pressure",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "1025.0 hpa",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "UV",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${data?.uv}",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 23,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Precipitation",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${data?.pricipe}",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Wind",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "19.1 km/h",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 23,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Last Update",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "2023-09-11 ",
                            style: GoogleFonts.poppins(
                              color: Colors.green,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
