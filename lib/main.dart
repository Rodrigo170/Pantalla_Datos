import 'package:flutter/material.dart';

void main() {
   runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Demo Flutter',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //context en donde estoy
    return Scaffold(
        appBar: AppBar(
          title:const Text('Página inicial'),
          leading: const Icon(Icons.menu),
          elevation: 20.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15)
              )
          ),
          actions: <Widget>[
            IconButton(
              icon:const Icon(Icons.search),
              onPressed: () => {}
              ),
            //IconButton(onPressed: () => {}, icon: Icon(Icons.duo)),
          ],
          ),
          body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                  ElevatedButton(
                    onPressed: () {
                    final route = MaterialPageRoute(
                      builder:(context)=>const SecondScreeen(),
                    );
                    Navigator.push(context,route);
                    },
                    child: const Text('Segunda pantalla'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                    final route = MaterialPageRoute(
                      builder:(context)=>const SecondScreeen(),
                    );
                    Navigator.push(context,route);
                    },
                    child: const Text('Datos'),
                  ),


                ],
              ),
            

              

          ),
            
      );
    
  }
}

class SecondScreeen extends StatelessWidget{
  const SecondScreeen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:const Text('Datos'),
    ),
    body: Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [

          Image.asset('assets/image/perfil.png',
                      width: 200.0,
                      ),

           SizedBox(height: 20.0,),

          Text('Rodrigo Tellez Escobedo',
          style: TextStyle(
              fontSize: 23.0,
             
              fontWeight: FontWeight.bold,
             
            )
          
          ),

           SizedBox(height: 20.0,),

          Text('Desarrollo Móvil Multiplataforma',
           style: TextStyle(
              fontSize: 20.0,
             
            )
          ),

           SizedBox(height: 20.0,),

          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),),
           
          

        ],),
      ),
  );
}

}