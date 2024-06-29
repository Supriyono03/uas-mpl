import 'package:facebook/models/user.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/story.dart';

class UserProvider extends ChangeNotifier {
  final User _user = User(
    name: 'Supri Yono',
    avatar: 'assets/images/user/lcd.jpg',
    educations: [
      Education(
        majors: 'Software Engineering',
        school: 'STMIK Widya Utama',
      ),
    ],
    hometown: 'Pliken',
    followers: 4820,
    friends: 1150,
    hobbies: [
      '💻 Bermain Game',
      '📚 Membaca',
      '⚽ Sepak Bola',
      '🎧 Dengerin Musik',
    ],
    socialMedias: [
      SocialMedia(
        icon: 'assets/images/github.png',
        name: 'Supriyono03',
        link: 'https://github.com/Supriyono03',
      ),
      SocialMedia(
          icon: 'assets/images/linkedin.png',
          name: 'Ga Punya Linkedin',
          link: 'https://www.linkedin.com/in/ddawst/'),
    ],
    stories: [
      Story(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        image: ['assets/images/story/3.jpg'],
        time: ['5 giờ'],
        shareWith: 'friends-of-friends',
        name: 'Featured',
      ),
      Story(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        image: [
          'assets/images/story/4.jpg',
          'assets/images/story/5.jpg',
          'assets/images/story/6.jpg',
          'assets/images/story/7.jpg',
        ],
        video: ['assets/videos/2.mp4', 'assets/videos/1.mp4'],
        time: ['1 menit'],
        shareWith: 'friends',
        name: '18+',
      ),
      Story(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        video: ['assets/videos/3.mp4'],
        time: ['1 Menit'],
        shareWith: 'friends',
        name: '20+',
      ),
    ],
    bio: 'I am Dat',
    cover: 'assets/images/user/lcd-cover.jpg',
    guard: true,
    topFriends: [
      User(
        name: 'Septiasih Nur Inayah',
        avatar: 'assets/images/user/khanhvy.jpg',
      ),
      User(
        name: 'Dipa Ismail',
        avatar: 'assets/images/user/messi.jpg',
      ),
      User(
        name: 'Ga Tau Lagi',
        avatar: 'assets/images/user/minhhuong.jpg',
      ),
      User(
        name: 'Bao',
        avatar: 'assets/images/user/baongan.jpg',
      ),
      User(
        name: 'Ha Lin',
        avatar: 'assets/images/user/halinh.jpg',
      ),
      User(
        name: 'Minh Trí',
        avatar: 'assets/images/user/minhtri.jpg',
      ),
    ],
    posts: [
      Post(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        time: '3 Menit',
        shareWith: 'public',
        content: '✅Ga Tau mau di isi apa',
        image: ['assets/images/post/2.jpg'],
        like: 163,
        love: 24,
        comment: 5,
        type: 'memory',
      ),
      Post(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        time: '3 Jam',
        shareWith: 'public',
        content: 'Do you like Pho?\nBecause I can be your Pho-ever ✨✨',
        image: [
          'assets/images/post/3.jpg',
          'assets/images/post/5.jpg',
          'assets/images/post/12.jpg',
          'assets/images/post/13.jpg',
          'assets/images/post/14.jpg',
          'assets/images/post/15.jpg',
          'assets/images/post/16.jpg',
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'classic',
        type: 'memory',
      ),
      Post(
        user: User(
          name: 'Supri Yono',
          avatar: 'assets/images/user/lcd.jpg',
        ),
        time: '3 phút',
        shareWith: 'public',
        content: 'Sudah di bilang ga tau mau isi apa🥰',
        image: [
          'assets/images/post/3.jpg',
          'assets/images/post/4.jpg',
          'assets/images/post/5.jpg'
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'column',
        type: 'memory',
      ),
    ],
  );
  User get user => _user;
}
