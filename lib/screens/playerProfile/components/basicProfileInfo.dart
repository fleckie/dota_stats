import 'package:flutter/material.dart';
import 'package:dota_stats/models/playerDetails.dart';

class BasicProfileInfo extends StatelessWidget{
  final PlayerDetailsResults playerDetails;
  BasicProfileInfo(this.playerDetails);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ProfilePic(playerDetails.steamAccount.avatar),
        Text("Games: " + playerDetails.matchCount.toString() + "   "),
        Text("Wins: " + playerDetails.winCount.toString() + "   "),
        Text("Winrate: " + ((playerDetails.winCount/playerDetails.matchCount)*100).toString().substring(0,2) + "%"),
      ]
    );
  }
}

class ProfilePic extends StatelessWidget {
  final String avatar;
  ProfilePic(this.avatar);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle
        ),
        alignment: Alignment.topLeft,
        child:  Image.network(
            "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/" + avatar
        )
    );
  }
}