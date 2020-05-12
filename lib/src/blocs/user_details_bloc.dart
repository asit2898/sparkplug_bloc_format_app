import 'dart:async';
import 'dart:wasm';
import 'package:cloud_firestore/cloud_firestore.dart';


import "../../utils/strings.dart";

import "../../resources/repository.dart";
import 'package:rxdart/rxdart.dart';

class UserDetailsBloc{
  final _repository = Repository();

  Stream<DocumentSnapshot> myDetails(String email) {
    return _repository.myDetails(email);
  }

  int getCredits(DocumentSnapshot doc){
    return doc.data['credits'];
  }

  void incrementCredits(DocumentSnapshot doc,String email, int increment){
     int newCredits =  getCredits(doc) + increment;
     _repository.updateCredits(email, newCredits);
  }
  }

