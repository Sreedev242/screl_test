import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class userDetail extends StatelessWidget {
  final String name1;
  final String username1;
  final String email1;
  final String address1;
  final String phone1;
  final String website1;
  final String company1;

  const userDetail(
      {super.key,
      required this.name1,
      required this.username1,
      required this.email1,
      required this.address1,
      
      required this.website1,
      required this.company1,
      required this.phone1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 64, 192),
      ),
      body: Column(
        children: [
          Text('Name : $name1'),
          SizedBox(
            height: 3,
          ),
          Text('Username: $username1'),
          SizedBox(
            height: 3,
          ),
          Text('EmailId : $email1'),
          SizedBox(
            height: 3,
          ),
          Text('Address : $address1'),
          SizedBox(
            height: 20,
          ),
          Text('Phone : $phone1'),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text('Website : '),
              SizedBox(
                width: 3,
              ),
              InkWell(
                child: Text('$website1'),
                onTap: () => launch('$website1'),
              )
            ],
          )
        ],
      ),
    );
  }
}
