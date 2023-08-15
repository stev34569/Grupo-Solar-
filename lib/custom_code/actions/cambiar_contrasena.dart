// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> cambiarContrasena(
  BuildContext context,
  String currentPassword,
  String newPassword,
) async {
  bool success = false;
  var user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    try {
      var cred = EmailAuthProvider.credential(
        email: user.email!,
        password: currentPassword,
      );
      await user.reauthenticateWithCredential(cred);

      await user.updatePassword(newPassword);

      var uid = user.uid;
      var usersRef = FirebaseFirestore.instance.collection('users');
      await usersRef.doc(uid).update({"password": newPassword});

      success = true;
    } catch (error) {
      print('Ocurrió un error durante el cambio de contraseña: $error');
    }
  }

  return success;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
