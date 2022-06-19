import 'package:flutter/material.dart';
import 'package:gsb_day2/services/FeedAPI.dart';

class FetchScreen extends StatefulWidget {
  const FetchScreen({Key? key}) : super(key: key);

  @override
  State<FetchScreen> createState() => _FetchScreenState();
}

class _FetchScreenState extends State<FetchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FeedService().getFeeds(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
