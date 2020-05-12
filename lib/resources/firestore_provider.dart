import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreProvider {
  Firestore _firestore = Firestore.instance;

  Future<int> authenticateUser(String email, String password) async {
    final QuerySnapshot result = await _firestore
        .collection("users")
        .where("email", isEqualTo: email)
        .getDocuments();
    final List<DocumentSnapshot> docs = result.documents;
    if (docs.length == 0) {
      return 0;
    } else {
      return 1;
    }
  }

  Future<void> registerUser(String email, String password) async {
    return _firestore
        .collection("users")
        .document(email)
        .setData({'email': email, 'password': password, 'credits': 0, 'tasks_completed': [] });
  }

  Stream<DocumentSnapshot> myDetails(String documentId) {
    return _firestore.collection("users").document(documentId).snapshots();
  }

  Stream<DocumentSnapshot> allTasks() {
    return _firestore.collection("tasks").document("all_tasks").snapshots();
  }

  Stream<DocumentSnapshot> taskDetails(String taskId) {
    return _firestore.collection("tasks").document(taskId).snapshots();
  }

  Future<void> updateCredits(String email, int newCredits) async {

    return _firestore
        .collection("users")
        .document(email)
        .updateData({'credits': newCredits});
  }


/*
  Stream<DocumentSnapshot> myGoalList(String documentId) {
    return _firestore.collection("users").document(documentId).snapshots();
  }

  Stream<QuerySnapshot> othersGoalList() {
    return _firestore
        .collection("users")
        .where('goalAdded', isEqualTo: true)
        .snapshots();
  }

  void removeGoal(String title, String documentId) async {
    DocumentSnapshot doc =
    await _firestore.collection("users").document(documentId).get();
    Map<String, String> goals = doc.data["goals"].cast<String, String>();
    goals.remove(title);
    if (goals.isNotEmpty) {
      _firestore
          .collection("users")
          .document(documentId)
          .updateData({"goals": goals});
    } else {
      _firestore
          .collection("users")
          .document(documentId)
          .updateData({'goals': FieldValue.delete(), 'goalAdded': false});
    }
  }
*/
}

