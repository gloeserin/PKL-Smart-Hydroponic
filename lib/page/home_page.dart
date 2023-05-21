import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<List<double>> _waveHeightAnimation;

  final List<double> _waveHeight = [0.27, 0.3];
  bool testing = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );
    _waveHeightAnimation = DoubleListTween(
      begin: _waveHeight,
      end: [0.75, 0.8],
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleWaveHeight() {
    setState(() {
      if (!testing) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
      testing = !testing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(
                top: 28.0), // Sesuaikan dengan posisi top yang diinginkan
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hydroponic',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF637E5B),
                  ),
                ),
                Image(
                  image: AssetImage('assets/img/plant.png'),
                  width: 24.0,
                  height: 24.0,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width,
            height: 380,
            child: ClipPath(
              clipper: HomePageClipper(),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 245, 245, 245),
                      Color.fromARGB(255, 153, 191, 225),
                    ],
                  ),
                ),
                child: AnimatedBuilder(
                  animation: _waveHeightAnimation,
                  builder: (context, child) {
                    return WaveWidget(
                      config: CustomConfig(
                        gradients: [
                          [Colors.blue, Colors.blue.shade200],
                          [Colors.blue.shade200, Colors.blue.shade400],
                        ],
                        durations: [
                          5000,
                          4000,
                        ],
                        heightPercentages: _waveHeightAnimation.value,
                        blur: const MaskFilter.blur(BlurStyle.solid, 5),
                        gradientBegin: Alignment.bottomLeft,
                        gradientEnd: Alignment.topRight,
                      ),
                      waveAmplitude: 4,
                      size: const Size(double.infinity, double.infinity),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column( 
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10, left: 40),
                              child: Column(
                                children: [
                            Icon(
                              Icons.settings,
                              color: Colors.grey[850],
                              size: 50,
                            ),
                            Text(
                                  'POMPA',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF476072),
                                  ),
                                ),
                            Text(
                                  'Off',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  
                                    color: Color(0xFF476072),
                                  ),
                                ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Column( 
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10, right: 40),
                              child: Column(
                                children: [
                            Icon(
                              Icons.water_outlined,
                              color: Colors.blue[800],
                              size: 50,
                            ),
                            Text(
                                  'POMPA',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF476072),
                                  ),
                                ),
                            Text(
                                  'Off',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  
                                    color: Color(0xFF476072),
                                  ),
                                ),

                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                           Text(
                                  'Value Sensor',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF476072),
                                  ),
                                ),
                           Text(
                                  '-',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  
                                    color: Color(0xFF476072),
                                  ),
                                ),

                        ],
                      ),
                    ),
                    
                    Padding(
  padding: EdgeInsets.only(bottom: 16), // Atur jarak bottom sebesar 16 piksel
  child: ElevatedButton(
    onPressed: toggleWaveHeight,
    child: Text(
      testing ? 'Reset' : 'Test',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        color: Colors.white,
      ),
    ),
    style: ElevatedButton.styleFrom(
      primary: Color(0xFF637E5B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
) 
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, size.height);
    path.cubicTo(
      size.width / 4,
      size.height,
      0,
      size.height * 2 / 3,
      size.width / 2,
      0,
    );
    path.cubicTo(
      size.width,
      size.height * 2 / 3,
      size.width * 3 / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    return path;
  }

  @override
  bool shouldReclip(HomePageClipper oldClipper) => false;
}

class DoubleListTween extends Tween<List<double>> {
  DoubleListTween({List<double>? begin, List<double>? end})
      : super(begin: begin, end: end);

  @override
  List<double> lerp(double t) {
    final beginList = begin!;
    final endList = end!;
    final resultList = <double>[];

    for (var i = 0; i < beginList.length; i++) {
      resultList.add(beginList[i] + (endList[i] - beginList[i]) * t);
    }

    return resultList;
  }
}
