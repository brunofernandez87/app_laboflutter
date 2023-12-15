import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  String text;
  List Lista;


  CardSwiper({
    Key? key,
    required this.text,
    required this.Lista,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(      
      width: double.infinity,
      height: 320,       
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,        
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,                                
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
            ),
          Expanded(                 
            child: ListView.builder(                 
              shrinkWrap:true,
              scrollDirection: Axis.horizontal, 
              physics: const BouncingScrollPhysics(),              
              itemCount: Lista.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(                                      
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal:10
                    ),                  
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            Lista[index]['url'],
                            width: 140,
                            height: 160,
                            fit: BoxFit.cover,
                        
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(Lista[index]['name']),
                        const SizedBox(height: 15,),
                        Text(
                          Lista[index]['duration'],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
      ],)
    );
  }
}