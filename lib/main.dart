
import 'package:flutter/material.dart';
import 'package:moda_app/detay.dart';

void main(List<String> args) {
  runApp(const ModaApp());
}


class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt),color: Colors.grey,),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Moda Uygulamasi",style: TextStyle(fontSize: 24,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
            Tab(icon: Icon(Icons.more,color: Colors.grey,),),
            Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,),),
            Tab(icon: Icon(Icons.navigation,color: Colors.grey,),),
            Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,),)
          ]
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 10 ),
          children: [
            // üst taraftaki profil listesi
            Container(
              color: Colors.transparent,
              height: 140,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  listeleman('assets/model1.jpeg','assets/chanellogo.jpg'),
                  const SizedBox(width: 30,),
                  listeleman('assets/model2.jpeg','assets/louisvuitton.jpg'),
                  const SizedBox(width: 30,),
                  listeleman('assets/model3.jpeg','assets/chloelogo.png'),
                  const SizedBox(width: 30,),
                  listeleman('assets/model1.jpeg','assets/chanellogo.jpg'),
                  const SizedBox(width: 30,),
                  listeleman('assets/model2.jpeg','assets/louisvuitton.jpg'),
                  const SizedBox(width: 30,),
                  listeleman('assets/model3.jpeg','assets/chloelogo.png'),
                ],
              ),
            ),

            // alt taraftaki Cart

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                //color:Colors.blue.shade300,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(image: AssetImage("assets/model1.jpeg"),fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          
                          // ignore: sized_box_for_whitespace
                          Container(
                            //width: MediaQuery.of(context).size.width-160,
                            // ignore: prefer_const_constructors
                            child: Expanded(
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Daisy',style:TextStyle(fontSize: 18,fontStyle: FontStyle.normal,fontWeight: FontWeight.w200) ,),
                                  SizedBox(height: 5,),
                                  Text('24 min ago',style: TextStyle(fontSize: 11,fontStyle: FontStyle.normal,fontWeight: FontWeight.w100),),
                                  
                              
                                ],
                              ),
                            ),
                          ),
                          const Icon(Icons.more_vert,color: Colors.grey,size: 22,),
                          
                        ],

                      ),

                      SizedBox(height: 15,),

                      Text("This offical website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very tempramnet and is recomment to friends",
                      style: TextStyle(
                        fontSize: 12 , fontStyle: FontStyle.normal , fontWeight: FontWeight.w400 
                      ),
                      ),

                      SizedBox(height: 15,),

                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay(imgPath: "assets/modelgrid1.jpeg",)));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width: (MediaQuery.of(context).size.width-50)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"),fit: BoxFit.cover)
                                ),
                                
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),

                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay(imgPath: "assets/modelgrid2.jpeg",)));
                                },
                                child: Hero(
                                  tag: 'assets/modelgrid2.jpeg',
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width-150)/2,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"),fit: BoxFit.cover)
                                  ),
                                                              
                                                            ),
                                ),
                              ),
                            SizedBox(height: 10,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay(imgPath: "assets/modelgrid3.jpeg",)));
                                },
                                child: Hero(
                                  tag: 'assets/modelgrid3.jpeg',
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width-150)/2,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"),fit: BoxFit.cover)
                                  ),
                                                              
                                                            ),
                                ),
                              ),
                            ],
                          ),




                        ],

                      ),

                      SizedBox(height: 10,),

                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.2)
                                ),
                                child: Center(
                                  child: Text(
                                    " # Louis vuitton", style: TextStyle(fontStyle: FontStyle.italic,color: Colors.brown,fontSize: 10),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 25,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.2)
                                ),
                                child: Center(
                                  child: Text(
                                    " # Chloe", style: TextStyle(fontStyle: FontStyle.italic,color: Colors.brown,fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),

                          Divider(),

                          SizedBox(height: 20,),

                          Row(
                            children: [
                              Icon(Icons.reply,color : Colors.brown.withOpacity(0.4),size : 30),
                              SizedBox(width: 5,),
                              Text("1.7k",style: TextStyle(fontStyle: FontStyle.italic, color: Colors.brown.withOpacity(0.2),fontSize: 16),),
                              SizedBox(width: 40,),
                              Icon(Icons.comment,color: Colors.brown.withOpacity(0.4),size: 25,),
                              SizedBox(width: 5,),
                              Text("325",style: TextStyle(fontStyle: FontStyle.italic, color: Colors.brown.withOpacity(0.2),fontSize: 16),),
                              SizedBox(width: 35,),
                              Container(
                                width: MediaQuery.of(context).size.width-300,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  Icon(Icons.favorite,color: Colors.red,size: 30,),
                                  SizedBox(width: 5,),
                                  Text("2.3k",style: TextStyle(fontStyle: FontStyle.italic, color: Colors.brown.withOpacity(0.2),fontSize: 16),),
                                ],),
                              )

                            ],
                          )

                    ],
                  ),
                  
                ),
              ),
            )



          ],
        ),
      );
  }
  
  listeleman(String imagePath, String logoPath) {

    return Column(
      children: [
        Stack(children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left:50,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(logoPath),fit: BoxFit.cover)
              ),
            ),
          ),


          
        ],),
        
        const SizedBox(height: 10,),

        Container(
            height: 30,
            width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.brown
              ),
              child: const Center(child: Text("Follow",style: TextStyle(fontSize: 13,fontStyle: FontStyle.normal,fontWeight:FontWeight.bold,color: Colors.white),)),
            ),

      ],
    );  
  }


}