import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class RankBadge extends StatelessWidget {
  const RankBadge({
    Key? key,
    required this.rank,
    required this.previousRank,
    this.showSymbol = true,
  }) : super(key: key);

  final int rank;
  final int previousRank;
  final bool showSymbol;

  @override
  Widget build(BuildContext context) {
    var symbol = Icon(
      Icons.remove,
      color: SocialUiColor.rankSameSymbolColor,
    );

    if (rank - previousRank > 0) {
      symbol = Icon(
        Icons.expand_more,
        color: SocialUiColor.rankDecreaseSymbolColor,
      );
    } else if (rank - previousRank < 0) {
      symbol = Icon(
        Icons.expand_less,
        color: SocialUiColor.rankIncreaseSymbolColor,
      );
    }
    return Container(
      child: Column(
        children: [
          Text(
            _humanizeRank,
            style: TextStyle(
              color: SocialUiColor.rankNumberColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (showSymbol) symbol,
        ],
      ),
    );
  }

  String get _humanizeRank => '$rank${_getDayOfMonthSuffix(rank)}';

  String _getDayOfMonthSuffix(int number) {
    if (number >= 11 && number <= 13) {
      return 'th';
    }

    switch (number % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
