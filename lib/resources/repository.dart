import 'package:cloud_firestore/cloud_firestore.dart';

import 'firestore_provider.dart';


class Repository {
  final _firestoreProvider = FirestoreProvider();


  Future<int> authenticateUser(String email, String password) =>
      _firestoreProvider.authenticateUser(email, password);

  Future<void> registerUser(String email, String password) =>
      _firestoreProvider.registerUser(email, password);

  Future<void> updateCredits(String email, int newCredits) =>
    _firestoreProvider.updateCredits(email, newCredits);

  Stream<DocumentSnapshot> myDetails(String email) =>
      _firestoreProvider.myDetails(email);

  Stream<DocumentSnapshot> allTasks() =>
      _firestoreProvider.allTasks();

  Stream<DocumentSnapshot> taskDetails(String taskId) =>
      _firestoreProvider.taskDetails(taskId);

  /*
  Future<void> uploadGoal(String email, String title, String goal) =>
      _firestoreProvider.uploadGoal(title, email, goal);

  Stream<DocumentSnapshot> myGoalList(String email) =>
      _firestoreProvider.myGoalList(email);

  Stream<QuerySnapshot> othersGoalList() => _firestoreProvider.othersGoalList();

  void removeGoal(String title, email) =>
      _firestoreProvider.removeGoal(title, email);
*/

}
