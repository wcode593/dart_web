import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Aroma a Café',
                    style: TextStyle(
                      color: Colors.brown, 
                      fontSize: 70, 
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text("Hacemos el café con Amor y Calidad.", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700
                  ),)
                ],
              ),
              Image.asset('assets/coffe_tender.jpg'),
              ElevatedButton(onPressed: (){}, child: Text('Iniciar Sesión'), 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Registrate', style: TextStyle(color: Colors.brown),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                side: BorderSide(color: Colors.brown),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              )),
            ],
          ),
        ),
      ),
    );
  }
}