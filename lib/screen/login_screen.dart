import 'package:flutter/material.dart';
import 'package:flutter_hidroponik/screen/menu_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Form(
                      // key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            'LOGIN CREDENTIAL',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF637E5B),
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            // controller: _usernameController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'Enter your username',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244),)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244),),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0, // mengatur ukuran font label
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your username';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244),)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244),),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0, // mengatur ukuran font label
                                fontFamily: 'Poppins',
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Host',
                              hintText: 'Enter your host address',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0, // mengatur ukuran font label
                                fontFamily: 'Poppins',
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Virtual Host',
                              hintText: 'Enter your virtual host',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0, // mengatur ukuran font label
                                fontFamily: 'Poppins',
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Topic Publish',
                              hintText: 'Enter your Topic',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0, // mengatur ukuran fornt label
                                fontFamily: 'Poppins',
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Topic Subscribe',
                              hintText: 'Enter your topic',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0, // mengatur ukuran font hint
                                fontFamily: 'Poppins',
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0, // mengatur ukuran font label
                                fontFamily: 'Poppins',
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelText: 'Guid KIT',
                              hintText: 'Enter your guid kit',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: Color(0xFF285244))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF285244)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily:
                                    'Poppins', // mengatur ukuran font hint
                                color: Colors.grey, // mengatur warna font hint
                              ),
                              labelStyle: TextStyle(
                                fontSize: 16.0,
                                fontFamily:
                                    'Poppins', // mengatur ukuran font label
                                color: Color(0xFF285244), // mengatur warna font label
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              // if (value.isEmpty) {
                              //   return 'Please enter your password';
                              // }
                              // return null;
                            },
                          ),
                          SizedBox(height: 24.0),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // if (_formKey.currentState.validate()) {
                                    //   // Do login process with RabbitMQ
                                    //   loginWithRabbitMQ();
                                    // }
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MenuScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF82AC7E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.qr_code),
                                  color: Color(0xFF637E5B),
                                  iconSize: 28,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      )),
    );
  }

//   void _login() async {
//     if (_formKey.currentState.validate()) {
//       setState(() {
//         _isLoading = true;
//       });

//       // Connect to RabbitMQ server
//       final conn = await Connection.connect('amqp://localhost');

//       // Create a channel
//       final channel = await conn.channel();

//       // Declare a queue for login messages
//       final loginQueueName = 'login_queue';
//       await channel.queue(loginQueueName, durable: true);

//       // Send a login message to the queue
//       final message = '${_emailController.text},${_passwordController.text}';
//       channel.basicPublish('', loginQueueName, message);

//       // Listen for login response
//       final responseQueueName = 'login_response_queue';
//       await channel.queue(responseQueueName, durable: true);
//       final consumer = await channel.basicConsume(responseQueueName);
//       await for (var delivery in consumer) {
//         final response = new String.fromCharCodes(delivery.body);
//         if (response == 'success') {
//           Navigator.pushNamed(context, '/home');
//         } else {
//           setState(() {
//             _isLoading = false;
//           });
//           showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text('Login Failed'),
//               content: Text('Invalid email or password'),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ],
//             ),
//           );
//         }
//         channel.basicAck(delivery.deliveryTag);
//         break;
//       }

//       // Close connection
//       await channel.close();
//       await conn.close
// ();
//     }
//   }
}
