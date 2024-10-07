import 'dart:convert';

import 'package:first_application_543/core/entities/photo_entity.dart';
import 'package:first_application_543/widgets/photo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../core/entities/user_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<UserEntity> listUsers = [];
  final List<PhotoEntity> listPhotos = [];
  @override
  void initState() {
    getPhotos();
    super.initState();
  }



  getUsers() async {

    final Client client = Client();

    final Response response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    final data = json.decode(response.body);

    final List<Map<String, dynamic>> dataList =
    List<Map<String, dynamic>>.from(data);

    for (var element in dataList) {
      listUsers.add(UserEntity.fromJson(element));
    }

    print(listUsers.length);
    print(listUsers);

    setState(() {});
  }
  getPhotos() async {

    final Client client = Client();

    final Response response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    final data = json.decode(response.body);

    final List<Map<String, dynamic>> dataList =
    List<Map<String, dynamic>>.from(data);

    for (var element in dataList) {
      listPhotos.add(PhotoEntity.fromJson(element));
    }

    print(listPhotos.length);
    print(listPhotos);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listPhotos.length,
        itemBuilder: (context, index) {
          final entity = listPhotos[index];

          return PhotoCardWidget(entity: entity);
        },
      ),
    );
  }
}
