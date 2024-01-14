import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  int total = 4;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(
      initialPage: 1,
    )..addListener(() {
        print('sss');
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          makePage(
              image: 'assets/images/one.jpg', title: 'Eyfel Tower', description: "The tower is 330 metres (1,083 ft) tall,[8] about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest human-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930. It was the first structure in the world to surpass both the 200-metre and 300-metre mark in height. Due to the addition of a broadcasting aerial at the top of the tower in 1957, it is now taller than the Chrysler Building by 5.2 metres (17 ft). Excluding transmitters, the Eiffel Tower is the second tallest free-standing structure in France after the Millau Viaduct.",page: 1),
          makePage(
              image: 'assets/images/two.jpg', title: "London Bridge", description: "The current bridge stands at the western end of the Pool of London and is positioned 30 metres (98 ft) upstream from previous alignments. The approaches to the medieval bridge were marked by the church of St Magnus-the-Martyr on the northern bank and by Southwark Cathedral on the southern shore. Until Putney Bridge opened in 1729, London Bridge was the only road crossing of the Thames downstream of Kingston upon Thames. London Bridge has been depicted in its several forms, in art, literature, and songs, including the nursery rhyme 'London Bridge Is Falling Down', and the epic poem The Waste Land by T. S. Eliot.",page: 2),
          makePage(
              image: 'assets/images/three.jpg', title: 'Samarkand', description: "The city is noted as a centre of Islamic scholarly study and the birthplace of the Timurid Renaissance. In the 14th century, Timur made it the capital of his empire and the site of his mausoleum, the Gur-e Amir. The Bibi-Khanym Mosque, rebuilt during the Soviet era, remains one of the city's most notable landmarks. Samarqand's Registan square was the city's ancient centre and is bounded by three monumental religious buildings. The city has carefully preserved the traditions of ancient crafts: embroidery, goldwork, silk weaving, copper engraving, ceramics, wood carving, and wood painting.[8] In 2001, UNESCO added the city to its World Heritage List as Samarqand – Crossroads of Cultures.",page: 3),
          makePage(
              image: 'assets/images/four.jpg', title: 'Barcelona', description: "Founded as a Roman city, in the Middle Ages Barcelona became the capital of the County of Barcelona. After joining with the Kingdom of Aragon to form the confederation of the Crown of Aragon, Barcelona, which continued to be the capital of the Principality of Catalonia, became the most important city in the Crown of Aragon and the main economic and administrative centre of the Crown, only to be overtaken by Valencia, wrested from Moorish control by the Catalans, shortly before the dynastic union between the Crown of Castile and the Crown of Aragon in 1492. Barcelona became the centre of Catalan separatism, briefly becoming part of France during the 17th century Reapers' War. It was the capital of Revolutionary Catalonia during the Spanish Revolution of 1936",page: 4),
        ],
      ),
    );
  }

  Widget makePage(

      {required String image,
      required String title,
      required String description,required int page}) {
    int total = 4;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/$total',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          child:
                              Icon(Icons.star, size: 15, color: Colors.yellow),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child:
                              Icon(Icons.star, size: 15, color: Colors.yellow),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child:
                              Icon(Icons.star, size: 15, color: Colors.yellow),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child:
                              Icon(Icons.star, size: 15, color: Colors.yellow),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child: Icon(Icons.star, size: 15, color: Colors.grey),
                          margin: EdgeInsets.only(right: 5),
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description,
                        style: TextStyle(color: Colors.white.withOpacity(.7),height: 1.9,fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('READ MORE...',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
