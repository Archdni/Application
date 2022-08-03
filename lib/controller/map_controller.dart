import 'package:cloud_firestore/cloud_firestore.dart';


class SchoolListViewModel {
  Future<List<SchoolViewModel>> getAllActvities(String cityname) async {

    final QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("schools").where("city",isEqualTo: cityname).get();
    
    final actvts = snapshot.docs.map((doc) => SchoolModel.fromDocument(doc)).toList();
    return actvts.map((school) => SchoolViewModel(school: school)).toList(); 

  }
}
class SchoolViewModel{
  final SchoolModel school;
  SchoolViewModel({required this.school});

  String get name {
    return school.name; 
  }

  String get location {
    return school.location; 
  }

  String get imageUrl {
    return school.imageUrl; 
  }

  String get description {
    return school.description; 
  }

  String get phone {
    return school.phone; 
  }


  double get rating {
    return school.rating; 
  }

  String get price {
    return school.price; 
  }

  int get students {
    return school.students;
  }

}
