import 'package:app/widgets/search_results_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:string_similarity/string_similarity.dart';

Future<List<Widget>> searchItem(String query) async {
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  QuerySnapshot listings = await firestore.collection('listings').get();
  final List<String> itemNames =
      listings.docs.map((d) => (d.data() as Map)['item'].toString()).toList();

  final bestMatch = StringSimilarity.findBestMatch(query, itemNames);
  final bestMatchDoc = (listings.docs[bestMatch.bestMatchIndex].data() as Map);

  bestMatch.ratings.sort((a, b) => a.rating!.compareTo(b.rating as num));
  final results = bestMatch.ratings.reversed
      .where((element) => element.rating! > 0.5)
      .map((e) => e.target);

  final items = [];

  listings.docs.forEach((d) {
    final data = d.data() as Map;
    if (results.contains(data['item'])) items.add(data);
  });

  return items
      .map((e) => searchResultItem(
          e['item'], e['price'], e['merchant'], e['phoneNumber']))
      .toList();
}
