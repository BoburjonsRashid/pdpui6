import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _islogin=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/im_party.jpeg'),
          fit: BoxFit.cover,

        ),

      ),
      child: Container(padding:const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                ]
            )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [


          const Text(
            "Find the best parties near you.",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                ),
          ),
            const SizedBox(height: 30),
            const Text(
              "Let us find you a party for your interest",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 30,),
            _islogin?
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.yellow[900],
                borderRadius: BorderRadius.circular(50)

              ),
              child: const Center(
                child: Text('Start',style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ):


            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)

              ),
              child: const Center(
                child: Text("Google+",style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ),
            const SizedBox(height: 30,),
      ]),
    ),
    )
    );

  }
}
