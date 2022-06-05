import 'dart:math';

import 'package:fb_clone/models/post.dart';
import 'package:fb_clone/models/user.dart';
import 'package:fb_clone/models/story.dart';
import 'package:fb_clone/widgets/responsive_lyt.dart';
import 'package:flutter/cupertino.dart';

const User currentUser = User(
  name: 'Mohit Kumar',
  imageUrl:
      'https://images.unsplash.com/photo-1513789181297-6f2ec112c0bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
);
List shuffle(List array) {
  var random = new Random();

  for (var i = array.length - 1; i > 0; i--) {
    var n = random.nextInt(i + 1);
    var temp = array[i];
    array[i] = array[n];
    array[n] = temp;
  }
  return array;
}

List<User> get onlineUsers {
  List<User> list = new List.empty(growable: true);
  list.addAll(_onlineUsers);
  list.shuffle();
  return list;
}

List<Story> get stories {
  List<Story> list = new List.empty(growable: true);
  list.addAll(_stories);
  list.shuffle();
  return list;
}

List<Post> get posts {
  List<Post> list = new List.empty(growable: true);
  list.addAll(_posts);
  list.shuffle();
  return list;
}

const List<User> _onlineUsers = [
  User(
    name: 'Rishav Anand',
    imageUrl:
        'https://images.unsplash.com/photo-1653899262783-8bb8bdc623c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ),
  User(
    name: 'Priyanshu Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1653778005824-4bc7dc887603?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80',
  ),
  User(
    name: 'Ravi Ranjan',
    imageUrl:
        'https://images.unsplash.com/photo-1653717672421-ea07d5496ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  ),
  User(
    name: 'Shubham Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1653544753475-1718d25f2629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Shreya Kumari',
    imageUrl:
        'https://images.unsplash.com/photo-1653749576888-e1c35779b469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Hari Om Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1653629154351-3072ee211a9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Raushan Yadav',
    imageUrl:
        'https://images.unsplash.com/photo-1653580559380-e44e45d2893e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQzfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  User(
      name: 'Himanshu Kumar',
      imageUrl:
          'https://images.unsplash.com/photo-1653599111260-230c2c9297fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
  User(
    name: 'Priyanshi Agarwal',
    imageUrl:
        'https://images.unsplash.com/photo-1609077487399-e981a229d487?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDYwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Lawanya Shekhar',
    imageUrl:
        'https://images.unsplash.com/photo-1653594964387-a26001bc8921?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDYyfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Satyam Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1646825576958-a255d1d3a241?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8cm5TS0RId3dZVWt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Satyam Sharma',
    imageUrl:
        'https://images.unsplash.com/photo-1650295751050-b184e54e177c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8YWV1NnJMLWo2ZXd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Bhavana Trivedi',
    imageUrl:
        'https://images.unsplash.com/photo-1653764828265-f4bba49cf54d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8YWV1NnJMLWo2ZXd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Captain Jack',
    imageUrl:
        'https://images.unsplash.com/photo-1654148308635-b6d911000621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Vivek Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1541014597398-cd43df0833c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8X2hiLWRsNFEtNFV8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'John',
    imageUrl:
        'https://images.unsplash.com/photo-1653932946648-6585ff164682?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Niraj Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1653936999237-9ecd39e1b171?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
      name: 'Sujan Ahmad',
      imageUrl:
          'https://images.unsplash.com/photo-1653407900208-03d818bf9bfb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
  User(
    name: 'Saqib Hussain',
    imageUrl:
        'https://images.unsplash.com/photo-1647368817563-f00e432ed635?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8aVVJc25WdGpCMFl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Haseeb',
    imageUrl:
        'https://images.unsplash.com/photo-1642708238728-288b1eab149c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Raj Shekhar',
    imageUrl:
        'https://images.unsplash.com/photo-1648246136851-84b3c83ba2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8eEh4WVRNSExnT2N8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Mahesh Kumar',
    imageUrl:
        'https://images.unsplash.com/photo-1653834979224-a412b48a1b5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
];

final List<Story> _stories = [
  Story(
    user: _onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1653760965429-f597330e9bb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  Story(
    user: _onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1653663736001-6e4e3f1006d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    isViewed: true,
  ),
  Story(
    user: _onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1653250198415-6bae22e0c796?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI2fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  Story(
    user: _onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1653299373605-f3c6a11d0da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUzfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    isViewed: true,
  ),
  Story(
    user: _onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1653233797116-934bfef498a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8YWV1NnJMLWo2ZXd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  Story(
    user: _onlineUsers[1],
    imageUrl:
        'https://images.unsplash.com/photo-1642751227520-32ec1a7a4b11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyfGFldTZyTC1qNmV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  Story(
    user: _onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1637169797848-12431f1d355c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ0fGFldTZyTC1qNmV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    isViewed: true,
  ),
  Story(
    user: _onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1654148308773-609632527794?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
  Story(
    user: _onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1653936999236-5d01f9423095?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfGhtZW52UWhVbXhNfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    isViewed: true,
  ),
  Story(
    user: _onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1642708321051-005dd4699746?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ),
];

final List<Post> _posts = [
  const Post(
    user: currentUser,
    caption: 'Whatever is good for your soul, do that',
    timeAgo: '58m',
    imageUrl:
        'https://images.unsplash.com/photo-1653834979224-a412b48a1b5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: _onlineUsers[5],
    caption: 'Vodka may not be the answer but it’s worth a shot',
    timeAgo: '3hr',
    imageUrl:
        "https://images.unsplash.com/photo-1650229931209-5ab7d76719cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8cm5TS0RId3dZVWt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: _onlineUsers[4],
    caption: 'I don’t always take a selfie, but when I do….',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1653828062473-e9122d798ba3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8cm5TS0RId3dZVWt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: _onlineUsers[3],
    caption: 'Couldn’t be happier 🙂',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1637323988659-8e5cc44d41b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cVBZc0R6dkpPWWN8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: _onlineUsers[0],
    caption:
        '“Having the dream is easy, making it come true is hard” – Serena Williams',
    timeAgo: '1d',
    imageUrl: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: _onlineUsers[9],
    caption: 'Can’t hear, can’t speak, can’t see.',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/photo-1653760965429-f597330e9bb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
