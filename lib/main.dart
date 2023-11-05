import 'package:flutter/material.dart';

final List<String> mass = ['lib/assets/images/air.png', 'lib/assets/images/air1.png', 'lib/assets/images/marshall.png', 'lib/assets/images/jbl.png', 'lib/assets/images/no.png', 'lib/assets/images/no1.png', 'lib/assets/images/no2.png', 'lib/assets/images/no3.png', 'lib/assets/images/no4.png', 'lib/assets/images/no7.png', ];
final List<String> mass1 = ['Airpods pro', 'Airpods 1', 'Marshall', 'Jbl', 'no name ' 'no name 2', 'no name 3' ,'no name 4', 'no name 5', 'no name 6', 'no name 7'];
final List<String> mass2 = ['19999 рублей', '10999 рублей', '11999 рублей', '29999 рублей', '1 рубль', '3 рубля', '4 рубля', '5 рублей', '6 рублей', '7 рублей'];

void main() {
  runApp(const MaterialApp(
    home: ListViewLesson(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ozon'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(16)),
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.asset("${mass[index]}", height: 200, width: 170,
                    
                  ),
                  Padding(padding: EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text(
                    mass1[index],
                    style: TextStyle(color: Colors.white),
                  ),
                    ],
                  ),
                  ),
                 
                  SizedBox(
                    height: 5,
                  ),
                  Padding(padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                    mass2[index],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                    ],
                  ),
                  ),
                  SizedBox(height: 5,),
                  Padding(padding: 
                  EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton.filledTonal(
                          onPressed: () {},
                          color: Colors.black26,
                          iconSize: 20,
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            
                          )),
                    ],
                  )
                    ],
                  ),
                  ),

                  
                ],
              ),
            );
          })),
    );
  }
}
