import 'package:template_quiz_mobile_si_b/utils/constant.dart';

class GameModel {
  String gameName;
  String gameImg;
  String gameDesc;
  String gamePublisher;
  String gamePublishDate;
  int totalLike;

  GameModel({
    required this.gameName,
    required this.gameImg,
    required this.gameDesc,
    required this.gamePublisher,
    required this.gamePublishDate,
    required this.totalLike,
  });

  static final List<GameModel> gameList = [
    GameModel(
      gameName: "The Witcher 3: Wild Hunt",
      gameImg: "${Constant.assetsImage}/witcher_3.png",
      gameDesc:
          "An open-world RPG where you play as Geralt of Rivia, a monster slayer for hire. He embarks on a personal quest to find his adopted daughter Ciri, who is being pursued by the otherworldly Wild Hunt. The game is set in a visually stunning dark fantasy world, offering a rich story and meaningful choices.",
      gamePublisher: "CD Projekt",
      gamePublishDate: "May 19, 2015",
      totalLike: 125000,
    ),
    GameModel(
      gameName: "Grand Theft Auto V",
      gameImg: "${Constant.assetsImage}/gta_v.png",
      gameDesc:
          "An action-adventure game set in the fictional state of San Andreas. Players control three lead protagonists: retired bank robber Michael, street gangster Franklin, and drug dealer Trevor. Their stories interconnect as they commit heists while under pressure from government agencies and powerful criminals.",
      gamePublisher: "Rockstar Games",
      gamePublishDate: "September 17, 2013",
      totalLike: 230000,
    ),
    GameModel(
      gameName: "Valorant",
      gameImg: "${Constant.assetsImage}/valorant.png",
      gameDesc:
          "A free-to-play tactical first-person shooter developed and published by Riot Games. Two teams of five compete, with one team attacking and the other defending in a series of rounds. Players assume the control of 'Agents,' characters who have unique abilities that enhance the tactical gameplay.",
      gamePublisher: "Riot Games",
      gamePublishDate: "June 2, 2020",
      totalLike: 180500,
    ),
    GameModel(
      gameName: "Genshin Impact",
      gameImg: "${Constant.assetsImage}/genshin_impact.png",
      gameDesc:
          "An action role-playing game featuring an open-world environment and gacha mechanics. Set in the fantasy world of Teyvat, the player controls a traveler searching for their lost twin. Players switch between four characters in a party, using elemental skills to solve puzzles and defeat enemies.",
      gamePublisher: "miHoYo",
      gamePublishDate: "September 28, 2020",
      totalLike: 210000,
    ),
    GameModel(
      gameName: "Red Dead Redemption 2",
      gameImg: "${Constant.assetsImage}/rdr2.png",
      gameDesc:
          "A Western-themed action-adventure game set in an open world environment. The story follows outlaw Arthur Morgan, a member of the Van der Linde gang, in a fictionalized American Old West in 1899. Arthur must deal with the decline of the Wild West while attempting to survive against rival gangs and other adversaries.",
      gamePublisher: "Rockstar Games",
      gamePublishDate: "October 26, 2018",
      totalLike: 198000,
    ),
    GameModel(
      gameName: "Minecraft",
      gameImg: "${Constant.assetsImage}/minecraft.png",
      gameDesc:
          "A sandbox video game where players can build and explore virtual worlds made of blocks. There are no specific goals to accomplish, allowing players a large amount of freedom in choosing how to play. Gameplay modes include a survival mode and a creative mode where players have unlimited resources.",
      gamePublisher: "Mojang Studios",
      gamePublishDate: "November 18, 2011",
      totalLike: 350000,
    ),
  ];
}
