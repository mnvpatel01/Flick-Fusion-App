

import 'package:flutter/material.dart';
import 'package:movie_info/screens/details/components/body.dart';

import '../../models/movie.dart';


class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie, key: key!,),
    );
  }
}