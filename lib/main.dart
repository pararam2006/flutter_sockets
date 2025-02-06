import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late IO.Socket socket;
  String userName = "hui";
  String email = "hui@mail.com";
  String password = "password hui";

  @override
  void initState() {
    super.initState();
    connectToSocket();
  }

  void connectToSocket() {

    socket = IO.io('https://localhost', <String, dynamic>{
    // socket = IO.io('https://flutter-chat-server-q7ne.onrender.com', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    // socket.connect();

    socket.onConnect((_) {
      print('Подключено к серверу');
    });

    socket.on('response', (data) {
      print('Сервер вещает: $data');
    });

    socket.on('err', (errMsg) {
      print(errMsg);
    });
  }


  @override
  void dispose() {
    socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Socket.IO Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Ты нажал первую кнопку");
                  socket.emit('first');
                },
                child: Text("First Button"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Ты нажал вторую кнопку");
                  Map<String, dynamic> userData = {
                    'userName': userName,
                    'email': email,
                    'password': password,
                  };
                  socket.emit('second');
                  socket.emit('registerUser', userData);
                },
                child: Text("Second Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}