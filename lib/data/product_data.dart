import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData{
  
  String category;
  String id;
  String title;
  String description;
   
  double price;

  List images;
  List size;

  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    price = snapshot.data["price"] + 0.0;
    images = snapshot.data["images"];
    size = snapshot.data["size"];
  }

  Map<String, dynamic> toResumedMap(){
    return{
      "title": title,
      "description": description,
      "price": price
    };
  }

}