import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info/constants.dart';
import 'package:movie_info/models/movie.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({required Key key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide is total height & width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          // 40 % from total height
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4 - 50,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movie.backdrop),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: size.width * 0.9, // it will cover 90% of the screen
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: Color(0xFF12153D).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/star_fill.svg"),
                          SizedBox(height: kDefaultPadding / 4),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "${movie.rating}/",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: "10\n"),
                                TextSpan(
                                  text: "175,672",
                                  style: TextStyle(color: kTextLightColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/star.svg"),
                          SizedBox(height: kDefaultPadding / 4),
                          Text("Rate This",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),

                      // Metascroe

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xFF51CF66),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text("${movie.metascoreRating}" , 
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              ),

                            
                            
                            ),
                          ),
                          SizedBox(height: kDefaultPadding/4),
                          Text("Metascore ", 
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          Text("53 critic reviews" , style: TextStyle(color: kTextLightColor),)
                         
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              SafeArea(child: BackButton(
                  


              )),
            ],
          ),
        )
      ],
    );
  }
}
