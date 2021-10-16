import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ikrito',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Container(
          child: Column(
            children: [
              FirstRow(),
              SecondRow(),
              ThirdRow(),
              FouthRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class IkritoLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 92.5,
      child: Image.asset('images/logo.png'),
    );
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
    );
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Container(
          height: 185.2,
          color: Colors.white,
          child: Row(children: <Widget>[
            Flexible(
              child: IkritoLogo(),
            ),
            SizedBox(
              width: 40,
            ),
            SizedBox(
                width: 424,
                height: 47,
                child: Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Ieškoti",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                  obscureText: false,
                ))),

                 Category(),


            Flexible(
              child:SearchBtn(),
            ),
          ]),
        ));
  }
}

class ThirdRow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 40),
      child: Container(
        height: 50,
        color: Colors.grey,
        child:Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                "\uF6CD Visos prekės",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Prekybos centras'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Apie mus'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Naudingi patarimai'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Kontaktuoti'),
            ),
          ],
        ),
      ),

    );
  }
}

class FouthRow extends StatefulWidget {


  @override
  _FouthRowState createState() => _FouthRowState();
}

class _FouthRowState extends State<FouthRow> {

  List<String> litems = [" \u2695 Medicinos priemonės","\uF455 Apranga, avalynė, aksesuarai","\uF6CB Baldai ir namu interjeras",
    " \uF476 Vaikams ir kudikiams"," \uF3C0 Sportas, laisvalaikis, turizmas","\uF484 Kosmetika, kvėpalai","\uF33A Sodo prekės",
  "\uF50C Buitinė technika ir elektronika"," \uF6BF Santechnika, remontas, šildymas","\uF37D Virtuvės, buities,apyvokos prekės",
  "\uF4BB Kompiuterinė technika","\uF4F1 Mobilieji telefonai, Foto ir Video","\uF9B4 Gyvūnų prekės","\uF698 Autoprekės",
  "\uF4DA Knygos","\uF381 Dovanos, dekoracijos, gėlės","\uF345 Maisto prekės","\uF4D0 Biurui, mokyklai, kūrybai"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height:610,
      child:Row(
        children:<Widget>[
          SizedBox(
            width:40,
          ),
          SizedBox(
            width:400,
            child:  Column(
              children:<Widget>[
                Expanded(
                    child: new ListView.builder(
                      itemCount: litems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.black,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child:  Text(litems[index]),
                        );
                      },
                    )
                ),


              ]

            ),
          ),


        ]
      ),
    );
  }
}




class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final items = [
    'Visos Kategorijos',
    'Adapteriai,USB šakotuvai ',
    'Aksesuarai',
    'Ausinės',
    'Belaidės preigos taškas',
    'blt nerandu nieko',
    'Dantų priežiūrai',
    'Dulkių siurbliai',
    'Džiovyklės',
    'Epiliatoriai',
    'Garso kolonėlės',
    'Gartraukiai',
    'Grožis,sveikata',
    'Indaplovės',
    'Interaktyvios lentos',
    'Išoriniai kietieji diskai (SSD, HDD)',
    'Kaitlentės',
    'Kasetės lazeriniams spauzdintuvams',
    'Kasetės rašaliniams spauzdintuvams',
    'Kavos aparatai',
    'Kiti aksesuarai',
    'Klaviatūros',
    'Kompiuterio (WEB) kameros',
    'Kompiuterio aušinimo ir kiti priedai',
    'Kompiuterių priedai',
    'Komutatoriai(Switch)',
    'Krepšiai, kuprinės, dėklai kompiuteriams',
    'Lygintuvai',
    'Maitinimo šaltiniai',
    'Maršrutizatoriai(routeriai)',
    'Mikrobangų krosnelės',
    'Monitoriai',
    'Monitoriai kompiuteriams ir laikikliai',
    'Namų garso kolonėlės ir Soundbar sistemos',
    'NERA',
    'Nešiojami kompiuteriai',
    'Operacinės sistemos',
    'Operatyvioji atmintis(RAM)',
    'Orkaitės',
    'Oro drėkintuvai, valytuvai',
    'Pelės',
    'Plašetiniai kompiuteriai',
    'Planšečių, el.skaityklių priedai',
    'Plaukų formavimo ir tiesinimo prietaisai',
    'Projektoriai',
    'Projektorių ekranai',
    'Serveriai',
    'Skalbimo mašinos',
    'Skeneriai',
    'Smulki virtuvės įranga',
    'Spausdintuvai',
    'Spausdintuvų priedai',
    'Stacionarūs kompiuteriai',
    'Stacionarūs telefonai',
    'Televizoriai',
    'Televizoriai ir jų priedai',
    'UPS priedai',
    'Vaizdo grotuvai',
    'Vidiniai kietieji diskai(SSD,HDD,Hybrid)',
    'Viryklės',
    'Įkrovikliai neųiojamiems kompiuteriams',
    'Šaldikliai, šaldymo dęžės',
    'Šaldytuvai'
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          value: value,
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => this.value = value),
    ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}

class SearchBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    );
  }
}
