import 'package:flutter/material.dart';
import 'package:social_ui/social_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: SocialUiTheme.lightTheme,
      home: MyHomePage(title: 'Flutter Social UI Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabSelected = 0;
  @override
  Widget build(BuildContext context) {
    var myChatTextColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))],
      ),
      body: ListView(
        children: [
          // // Heading
          // Text(
          //   'Heading 1',
          //   style: Theme.of(context).textTheme.headline1,
          // ),
          // Text(
          //   'Heading 2',
          //   style: Theme.of(context).textTheme.headline2,
          // ),
          // Text(
          //   'Heading 3',
          //   style: Theme.of(context).textTheme.headline3,
          // ),
          // Text(
          //   'Heading 4',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          // Text(
          //   'Heading 5',
          //   style: Theme.of(context).textTheme.headline5,
          // ),
          // Text(
          //   'Heading 6',
          //   style: Theme.of(context).textTheme.headline6,
          // ),
          // Text(
          //   '헤딩 1',
          //   style: Theme.of(context).textTheme.headline1,
          // ),
          // Text(
          //   '헤딩 2',
          //   style: Theme.of(context).textTheme.headline2,
          // ),
          // Text(
          //   '헤딩 3',
          //   style: Theme.of(context).textTheme.headline3,
          // ),
          // Text(
          //   '헤딩 4',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          // Text(
          //   '헤딩 5',
          //   style: Theme.of(context).textTheme.headline5,
          // ),
          // Text(
          //   '헤딩 6',
          //   style: Theme.of(context).textTheme.headline6,
          // ),
          SectionHeader(title: 'GROUP HEADER'),
          GroupCard(
            title: 'Manhattan Project',
            body:
                'Research and development undertaking during World War II that produced the first nuclear weapons.',
          ),
          GroupCard(
            title: 'Artemis Program',
            body: 'Current program to bring humans to the Moon again',
            avatars: [
              'https://images.unsplash.com/photo-1627230123257-f9706d3cda86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80',
            ],
            backgroundColor: SocialUiColor.lightGrey,
          ),
          GroupCard(
            title: 'Constellation Program',
            body: 'Human space flight activities',
            avatars: [
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80',
              'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80',
              'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80',
              'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80'
            ],
            backgroundColor: SocialUiColor.lightRed,
          ),
          SectionHeader(title: 'NOTIFICATION ITEMS'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotificationListItem(
              leading: Icon(Icons.thumb_up_outlined, color: SocialUiColor.grey),
              title: 'Salvador mentioned you.',
              subtitle: 'Buy the milk the Artemis Program.',
              trailing: '4 hours ago',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotificationListItem(
              leading: Icon(Icons.notifications_outlined,
                  color: SocialUiColor.lightGrey),
              title: 'Salvador mentioned you.',
              subtitle: 'Buy the milk the Artemis Program.',
              trailing: '2 hours ago',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotificationListItem(
              leading:
                  Icon(Icons.favorite_outline, color: SocialUiColor.lightGrey),
              title: 'Salvador mentioned you.',
              subtitle: 'Buy the milk the Artemis Program.',
              trailing: '1 hour ago',
            ),
          ),
          SectionHeader(title: 'TAB VIEW'),
          Container(
            child: TabView(
              onTap: (int value) => setState(() => tabSelected = value),
              selected: tabSelected,
              labels: ['Assigned', 'Settings'],
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmptyState(text: "비어있음"),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmptyState(
                        text: 'Empty Projects.',
                        actionText: 'Create a new one?',
                        onActionPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SectionHeader(
            title: 'EMPTY STATES',
            actionText: 'View all',
            onActionPressed: () {},
          ),
          EmptyState(text: 'No Feeds.'),
          EmptyState(
            text: 'No Result.',
            actionText: 'Create new one',
            onActionPressed: () {},
          ),
          SectionHeader(title: 'FEEDS CARD'),
          FeedCard(
            username: 'Michael Dam',
            userAvatarUrl:
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&h=200&q=80',
            userSubtitle: '5 hours ago',
            body:
                'Small plates, salads & sandwiches an intimate setting with 12 indoor seats plus patio setting.',
            imageUrl:
                'https://images.unsplash.com/photo-1532105956626-9569c03602f6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1834&q=80',
          ),
          FeedCard(
            username: 'FL4K',
            userAvatarUrl:
                'https://images.unsplash.com/photo-1559969143-b2defc6419fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=80',
            userSubtitle: '3 hours ago',
            body:
                'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete…',
          ),
          SectionHeader(title: 'FEED COMPOSER'),
          FeedComposer(
            focusNode: FocusNode(),
            textEditingController: TextEditingController(),
            onSendPressed: (String message) {},
          ),
          SectionHeader(title: 'PHOTO CARD'),
          PlaceCard(),
          SectionHeader(title: 'COMMENTS'),
          CommentListItem(
            username: 'ALEX BENDER',
            userAvatar:
                'https://cdn.dribbble.com/users/102849/avatars/normal/a51d3414ef390fead573391b9160f755.jpg?1481289442',
            body:
                "Small plates, salads & sandwiches an intimate setting with 12 indoor seats plus patio setting.",
            subtitle: 'One day ago',
          ),
          CommentListItem(
            username: 'Ramadhani',
            userAvatar:
                'https://cdn.dribbble.com/users/4678459/avatars/normal/88a2db85e21304f897bbed9082ad002c.jpeg?1623237647',
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            subtitle: '3 hours ago',
          ),
          SectionHeader(title: 'LOAD MORE TEXT'),
          LoadMoreText(
            text: "View All Comments",
            onPressed: () {},
          ),
          SectionHeader(title: 'COMMENT COMPOSER'),
          CommentComposer(
            userAvatarUrl:
                'https://cdn.dribbble.com/users/4299515/avatars/normal/a2b4e87ae1f3081f91bdb039fb48d623.jpg?1571762998',
            onAvatarTap: () {},
          ),
          SectionHeader(title: 'FEED DETAILS'),
          FeedDetail(
            userAvatar:
                'https://cdn.dribbble.com/users/4299515/avatars/normal/a2b4e87ae1f3081f91bdb039fb48d623.jpg?1571762998',
            username: 'Dan Brown',
            userSubtitle: '3 hours ago',
            feedBody:
                'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and…',
          ),
          FeedDetail(
            userAvatar:
                'https://cdn.dribbble.com/users/4299515/avatars/normal/a2b4e87ae1f3081f91bdb039fb48d623.jpg?1571762998',
            username: 'Dan Brown',
            userSubtitle: '3 hours ago',
            feedBody: 'Hello World',
          ),
          SectionHeader(title: 'CHAT LIST ITEM'),
          ChatListItem(
            name: 'Julia Shagofferova',
            subtitle: 'Hello World',
            count: 3,
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
            ],
          ),
          ChatListItem(
            name: 'Taras Migulko, Julia Shagofferova',
            subtitle: 'Hello World',
            count: 0,
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/1998175/avatars/small/af46ac7b92eb85f76f5a3fe4f214fdf2.jpg?1542363868',
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
            ],
          ),
          ChatListItem(
            name: 'Julia Shagofferova, Alex Herzog, Taras Migulko',
            subtitle: 'Hello World',
            count: 12,
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/3124273/avatars/small/a9e9e733cf50a23f013a48595423e261.png?1622821279',
              'https://cdn.dribbble.com/users/1998175/avatars/small/af46ac7b92eb85f76f5a3fe4f214fdf2.jpg?1542363868',
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
            ],
          ),
          SectionHeader(title: 'CHAT MESSAGE'),
          ChatMessage(
            message: 'Hello World',
            mainAxisAlignment: MainAxisAlignment.end,
            backgroundColor: SocialUiColor.myChatBackgroundColor,
            textColor: SocialUiColor.myChatTextColor,
          ),
          ChatMessage(
            message: 'Good to see you',
            mainAxisAlignment: MainAxisAlignment.start,
            backgroundColor: SocialUiColor.otherChatBackgroundColor,
            textColor: SocialUiColor.otherChatTextColor,
          ),
          ChatMessage(
            message:
                'This is multiline message.\nIs it working?. it has little difference from your message. This message has times ago.',
            mainAxisAlignment: MainAxisAlignment.start,
            backgroundColor: SocialUiColor.otherChatBackgroundColor,
            textColor: SocialUiColor.otherChatTextColor,
            isContinuous: true,
            showTimesAgo: true,
            timesAgo: '11:30',
          ),
          ChatMessage(
            message: 'Awesome! I can see times ago.',
            mainAxisAlignment: MainAxisAlignment.end,
            backgroundColor: SocialUiColor.myChatBackgroundColor,
            textColor: SocialUiColor.myChatTextColor,
            showTimesAgo: true,
            timesAgo: '11:30',
          ),
          SectionHeader(title: 'CHAT COMPOSER'),
          ChatComposer(
            onSendPressed: (String message) {
              print(message);
            },
            focusNode: FocusNode(),
            textEditingController: TextEditingController(),
          ),
          SectionHeader(title: 'USER RECOMMEND LIST'),
          UserRecommendList(
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
              'https://cdn.dribbble.com/users/2146089/avatars/small/43ed31011fcd105632c475ff59093ce1.png?1539681430',
              'https://cdn.dribbble.com/users/1624253/avatars/small/9554935ce7f2064505ede2fe034484a5.jpg?1607746549',
              'https://cdn.dribbble.com/users/1498088/avatars/small/23da31656baae108381f4b731bf9aac7.png?1547015783',
              'https://cdn.dribbble.com/users/295355/avatars/small/fd69980456acc1b3a5f2a2fde1fa0d68.jpg?1542632080',
              'https://cdn.dribbble.com/users/1465253/avatars/small/6f8d825f885632a7dcbcfd396dcf20cd.jpg?1615328016',
              'https://cdn.dribbble.com/users/4883203/avatars/normal/0288bf8952cec52d121bffceec78a1cb.jpg?1597378936',
            ],
            usernames: [
              'Julia Shagofferova',
              'Afterglow',
              'Zaini Achmad',
              'rainfall',
              'Jordan Jenkins',
              'Alex Delker',
              'Yogyakarta',
            ],
          ),
          SizedBox(height: 16),
          UserRecommendList(
            canAdd: false,
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
              'https://cdn.dribbble.com/users/2146089/avatars/small/43ed31011fcd105632c475ff59093ce1.png?1539681430',
              'https://cdn.dribbble.com/users/1624253/avatars/small/9554935ce7f2064505ede2fe034484a5.jpg?1607746549',
              'https://cdn.dribbble.com/users/1498088/avatars/small/23da31656baae108381f4b731bf9aac7.png?1547015783',
              'https://cdn.dribbble.com/users/295355/avatars/small/fd69980456acc1b3a5f2a2fde1fa0d68.jpg?1542632080',
              'https://cdn.dribbble.com/users/1465253/avatars/small/6f8d825f885632a7dcbcfd396dcf20cd.jpg?1615328016',
              'https://cdn.dribbble.com/users/4883203/avatars/normal/0288bf8952cec52d121bffceec78a1cb.jpg?1597378936',
            ],
            usernames: [
              'Julia Shagofferova',
              'Afterglow',
              'Zaini Achmad',
              'rainfall',
              'Jordan Jenkins',
              'Alex Delker',
              'Yogyakarta'
            ],
          ),
          SizedBox(height: 16),
          UserRecommendList(
            canAdd: false,
            isWide: true,
            userAvatarUrls: [
              'https://cdn.dribbble.com/users/1080850/avatars/small/008a7bf29fecec095ebed3bc1311be28.jpeg?1590090724',
              'https://cdn.dribbble.com/users/2146089/avatars/small/43ed31011fcd105632c475ff59093ce1.png?1539681430',
              'https://cdn.dribbble.com/users/1624253/avatars/small/9554935ce7f2064505ede2fe034484a5.jpg?1607746549',
              'https://cdn.dribbble.com/users/1498088/avatars/small/23da31656baae108381f4b731bf9aac7.png?1547015783',
              'https://cdn.dribbble.com/users/295355/avatars/small/fd69980456acc1b3a5f2a2fde1fa0d68.jpg?1542632080',
              'https://cdn.dribbble.com/users/1465253/avatars/small/6f8d825f885632a7dcbcfd396dcf20cd.jpg?1615328016',
              'https://cdn.dribbble.com/users/4883203/avatars/normal/0288bf8952cec52d121bffceec78a1cb.jpg?1597378936',
            ],
            usernames: [
              'Julia Shagofferova',
              'Afterglow',
              'Zaini Achmad',
              'rainfall',
              'Jordan Jenkins',
              'Alex Delker',
              'Yogyakarta'
            ],
          ),
          SectionHeader(title: 'RANK BADGE'),
          RankBadge(rank: 1, previousRank: 2),
          RankBadge(rank: 2, previousRank: 1),
          RankBadge(rank: 3, previousRank: 3),
          SectionHeader(title: 'LEADERBOARD'),
          RankListItem(
            rankBadge: RankBadge(rank: 1, previousRank: 2),
            subtitle: '@vickypradana',
            title: 'Vicky Pradana',
            trailing: '9.452',
            imageUrl:
                'https://cdn.dribbble.com/users/1472374/avatars/small/a00a64d7c771d43b4e6f7d888e063932.jpg?1622394510',
          ),
          RankListItem(
            rankBadge: RankBadge(rank: 2, previousRank: 1),
            subtitle: '@arafathossain',
            title: 'Arafat Hossain',
            trailing: '8.987',
            imageUrl:
                'https://cdn.dribbble.com/users/5871720/avatars/small/b838938948407ef70285e84533768fc6.jpg?1600321076',
          ),
          RankListItem(
            rankBadge: RankBadge(rank: 3, previousRank: 3),
            subtitle: '@shaheenahmed',
            title: 'Shaheen Ahmed',
            trailing: '8.299',
            imageUrl:
                'https://cdn.dribbble.com/users/2988193/avatars/small/e635f5ca034b26910e38553da7985c20.jpg?1574592016',
          ),
          RankListItem(
            rankBadge: RankBadge(rank: 4, previousRank: 8),
            subtitle: '@ofeliaandronic',
            title: 'Ofelia Andronic',
            trailing: '8.200',
            imageUrl:
                'https://cdn.dribbble.com/users/1881653/avatars/small/8bb6b2233fb9460194a52f1e31130e4a.jpg?1532343967',
          ),
        ],
      ),
    );
  }
}
