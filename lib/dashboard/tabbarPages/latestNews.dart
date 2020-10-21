import 'package:apartment_find/model/postInFeed.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:flutter/material.dart';

class LatestNews extends StatefulWidget {
  
  @override
  _LatestNewsState createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  
  List<PostInFeed> post = [];
  
  @override
  void initState() {
    post.add(PostInFeed.fromJson({
        "profile_imag": "assets/avatar/avatar.png",
        "user_name": "Anil Pradhan",
        "date": "2 hours",
        "post_img": "assets/images/apartment.png",
        "post_text": "Beautiful Apartment",
        "likes": "179",
        "comments": "18",
        "post_type": "image"

    }));
    post.add(PostInFeed.fromJson({
      "profile_imag": "assets/avatar/avatar3.png",
      "user_name": "Hari Pradhan",
      "date": "8 hours",
      "post_img": "assets/images/apartment.png",
      "post_text": "I am looking for a new apartment, shared. There are two bedrooms, two bathrooms, a kitchen, with a large...",
      "likes": "203",
      "comments": "24",
      "post_type": "text"

    }));
    post.add(PostInFeed.fromJson({
      "profile_imag": "assets/avatar/avatar.png",
      "user_name": "Anil Pradhan",
      "date": "8 hours",
      "post_img": "assets/avatar/avatar5.png",
      "post_text": "I am looking for a new apartment, shared. There are two bedrooms, two bathrooms, a kitchen, with a large...",
      "likes": "273",
      "comments": "34",
      "post_type": "image"

    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
        child: ListView.builder(
          itemCount: post.length,
          itemBuilder: (context, index) {
            return (post[index].postType == "image") ?
            Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 20,
                            child: Image.asset(post[index].profileImag)),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post[index].userName,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: MyColors.boldText,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text(
                              post[index].date,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColors.subText
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/icons/menu.png'),
                  ],
                ),
                SizedBox(height: 10,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),),
                  child: Image.asset(post[index].postImg),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite, color: MyColors.red,),
                        SizedBox(width: 5,),
                        Text("Like (${post[index].likes})",style: TextStyle(color: MyColors.red),)
                      ],
                    ),
                    Text("Comment(${post[index].comments})", style: TextStyle(color: MyColors
                        .grey),),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(color: MyColors.divider,),
              ],
            )
                :
            Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 20,
                            child: Image.asset(post[index].profileImag)),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post[index].userName,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: MyColors.boldText,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text(
                              post[index].date,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColors.subText
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/icons/menu.png'),
                  ],
                ),
                SizedBox(height: 10,),
                Text(post[index].postText, style: TextStyle(
                  fontSize: 14
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite, color: MyColors.red,),
                        SizedBox(width: 5,),
                        Text("Like (${post[index].likes})",style: TextStyle(color: MyColors.red),)
                      ],
                    ),
                    Text("Comment(${post[index].comments})", style: TextStyle(color: MyColors
                        .grey),),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(color: MyColors.divider,),
              ],
            );
          },
        )
      ),
    );
  }
}
