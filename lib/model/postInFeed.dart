class PostInFeed {
  String profileImag;
  String userName;
  String date;
  String postImg;
  String postText;
  String likes;
  String comments;
  String postType;

  PostInFeed(
      {this.profileImag,
        this.userName,
        this.date,
        this.postImg,
        this.postText,
        this.likes,
        this.comments,
        this.postType});

  PostInFeed.fromJson(Map<String, dynamic> json) {
    profileImag = json['profile_imag'];
    userName = json['user_name'];
    date = json['date'];
    postImg = json['post_img'];
    postText = json['post_text'];
    likes = json['likes'];
    comments = json['comments'];
    postType = json['post_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile_imag'] = this.profileImag;
    data['user_name'] = this.userName;
    data['date'] = this.date;
    data['post_img'] = this.postImg;
    data['post_text'] = this.postText;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['post_type'] = this.postType;
    return data;
  }
}
