// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

import '../../../models/actions/wallet_action.dart';
import '../../../models/tokens/token.dart';
import '../../../models/transactions/transaction.dart';
import '../screens/about_screen.dart';
import '../screens/action_details.dart';
import '../screens/done_backup_screen.dart';
import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/protect_your_wallet.dart';
import '../screens/review_trade.dart';
import '../screens/settings.dart';
import '../screens/show_mnemonic.dart';
import '../screens/switch_commmunity.dart';
import '../screens/token_screen.dart';
import '../screens/trade.dart';
import '../screens/transaction_details.dart';
import '../screens/verify_mnemonic.dart';

class HomeRoutes {
  static const String homeScreen = '/';
  static const String transactionDetailsScreen = '/transaction-details-screen';
  static const String actionDetailsScreen = '/action-details-screen';
  static const String tokenScreen = '/token-screen';
  static const String tradeScreen = '/trade-screen';
  static const String reviewTradeScreen = '/review-trade-screen';
  static const String aboutScreen = '/about-screen';
  static const String showMnemonic = '/show-mnemonic';
  static const String verifyMnemonic = '/verify-mnemonic';
  static const String doneBackup = '/done-backup';
  static const String settingsScreen = '/settings-screen';
  static const String switchCommunityScreen = '/switch-community-screen';
  static const String protectYourWallet = '/protect-your-wallet';
  static const String profileScreen = '/profile-screen';
  static const all = <String>{
    homeScreen,
    transactionDetailsScreen,
    actionDetailsScreen,
    tokenScreen,
    tradeScreen,
    reviewTradeScreen,
    aboutScreen,
    showMnemonic,
    verifyMnemonic,
    doneBackup,
    settingsScreen,
    switchCommunityScreen,
    protectYourWallet,
    profileScreen,
  };
}

class HomeRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(HomeRoutes.homeScreen, page: HomeScreen),
    RouteDef(HomeRoutes.transactionDetailsScreen,
        page: TransactionDetailsScreen),
    RouteDef(HomeRoutes.actionDetailsScreen, page: ActionDetailsScreen),
    RouteDef(HomeRoutes.tokenScreen, page: TokenScreen),
    RouteDef(HomeRoutes.tradeScreen, page: TradeScreen),
    RouteDef(HomeRoutes.reviewTradeScreen, page: ReviewTradeScreen),
    RouteDef(HomeRoutes.aboutScreen, page: AboutScreen),
    RouteDef(HomeRoutes.showMnemonic, page: ShowMnemonic),
    RouteDef(HomeRoutes.verifyMnemonic, page: VerifyMnemonic),
    RouteDef(HomeRoutes.doneBackup, page: DoneBackup),
    RouteDef(HomeRoutes.settingsScreen, page: SettingsScreen),
    RouteDef(HomeRoutes.switchCommunityScreen, page: SwitchCommunityScreen),
    RouteDef(HomeRoutes.protectYourWallet, page: ProtectYourWallet),
    RouteDef(HomeRoutes.profileScreen, page: ProfileScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => HomeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(key: args.key),
        settings: data,
      );
    },
    TransactionDetailsScreen: (data) {
      final args = data.getArgs<TransactionDetailsScreenArguments>(
        orElse: () => TransactionDetailsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TransactionDetailsScreen(
          image: args.image,
          displayName: args.displayName,
          status: args.status,
          token: args.token,
          contact: args.contact,
          transfer: args.transfer,
        ),
        settings: data,
      );
    },
    ActionDetailsScreen: (data) {
      final args = data.getArgs<ActionDetailsScreenArguments>(
        orElse: () => ActionDetailsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActionDetailsScreen(
          action: args.action,
          image: args.image,
          displayName: args.displayName,
          accountAddress: args.accountAddress,
          symbol: args.symbol,
          amount: args.amount,
          contact: args.contact,
        ),
        settings: data,
      );
    },
    TokenScreen: (data) {
      final args = data.getArgs<TokenScreenArguments>(
        orElse: () => TokenScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TokenScreen(
          key: args.key,
          tokenAddress: args.tokenAddress,
        ),
        settings: data,
      );
    },
    TradeScreen: (data) {
      final args = data.getArgs<TradeScreenArguments>(
        orElse: () => TradeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TradeScreen(
          key: args.key,
          primaryToken: args.primaryToken,
        ),
        settings: data,
      );
    },
    ReviewTradeScreen: (data) {
      final args = data.getArgs<ReviewTradeScreenArguments>(
        orElse: () => ReviewTradeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReviewTradeScreen(
          key: args.key,
          exchangeSummry: args.exchangeSummry,
          fromToken: args.fromToken,
          toToken: args.toToken,
        ),
        settings: data,
      );
    },
    AboutScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutScreen(),
        settings: data,
      );
    },
    ShowMnemonic: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShowMnemonic(),
        settings: data,
      );
    },
    VerifyMnemonic: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerifyMnemonic(),
        settings: data,
      );
    },
    DoneBackup: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DoneBackup(),
        settings: data,
      );
    },
    SettingsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsScreen(),
        settings: data,
      );
    },
    SwitchCommunityScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SwitchCommunityScreen(),
        settings: data,
      );
    },
    ProtectYourWallet: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProtectYourWallet(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      final args = data.getArgs<ProfileScreenArguments>(
        orElse: () => ProfileScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileScreen(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension HomeRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomeScreen({
    Key key,
  }) =>
      push<dynamic>(
        HomeRoutes.homeScreen,
        arguments: HomeScreenArguments(key: key),
      );

  Future<dynamic> pushTransactionDetailsScreen({
    ImageProvider<dynamic> image,
    String displayName,
    String status,
    Token token,
    Contact contact,
    Transaction transfer,
  }) =>
      push<dynamic>(
        HomeRoutes.transactionDetailsScreen,
        arguments: TransactionDetailsScreenArguments(
            image: image,
            displayName: displayName,
            status: status,
            token: token,
            contact: contact,
            transfer: transfer),
      );

  Future<dynamic> pushActionDetailsScreen({
    WalletAction action,
    ImageProvider<dynamic> image,
    String displayName,
    String accountAddress,
    String symbol,
    String amount,
    Contact contact,
  }) =>
      push<dynamic>(
        HomeRoutes.actionDetailsScreen,
        arguments: ActionDetailsScreenArguments(
            action: action,
            image: image,
            displayName: displayName,
            accountAddress: accountAddress,
            symbol: symbol,
            amount: amount,
            contact: contact),
      );

  Future<dynamic> pushTokenScreen({
    Key key,
    String tokenAddress,
  }) =>
      push<dynamic>(
        HomeRoutes.tokenScreen,
        arguments: TokenScreenArguments(key: key, tokenAddress: tokenAddress),
      );

  Future<dynamic> pushTradeScreen({
    Key key,
    Token primaryToken,
  }) =>
      push<dynamic>(
        HomeRoutes.tradeScreen,
        arguments: TradeScreenArguments(key: key, primaryToken: primaryToken),
      );

  Future<dynamic> pushReviewTradeScreen({
    Key key,
    Map<dynamic, dynamic> exchangeSummry,
    Token fromToken,
    Token toToken,
  }) =>
      push<dynamic>(
        HomeRoutes.reviewTradeScreen,
        arguments: ReviewTradeScreenArguments(
            key: key,
            exchangeSummry: exchangeSummry,
            fromToken: fromToken,
            toToken: toToken),
      );

  Future<dynamic> pushAboutScreen() => push<dynamic>(HomeRoutes.aboutScreen);

  Future<dynamic> pushShowMnemonic() => push<dynamic>(HomeRoutes.showMnemonic);

  Future<dynamic> pushVerifyMnemonic() =>
      push<dynamic>(HomeRoutes.verifyMnemonic);

  Future<dynamic> pushDoneBackup() => push<dynamic>(HomeRoutes.doneBackup);

  Future<dynamic> pushSettingsScreen() =>
      push<dynamic>(HomeRoutes.settingsScreen);

  Future<dynamic> pushSwitchCommunityScreen() =>
      push<dynamic>(HomeRoutes.switchCommunityScreen);

  Future<dynamic> pushProtectYourWallet() =>
      push<dynamic>(HomeRoutes.protectYourWallet);

  Future<dynamic> pushProfileScreen({
    Key key,
  }) =>
      push<dynamic>(
        HomeRoutes.profileScreen,
        arguments: ProfileScreenArguments(key: key),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  HomeScreenArguments({this.key});
}

/// TransactionDetailsScreen arguments holder class
class TransactionDetailsScreenArguments {
  final ImageProvider<dynamic> image;
  final String displayName;
  final String status;
  final Token token;
  final Contact contact;
  final Transaction transfer;
  TransactionDetailsScreenArguments(
      {this.image,
      this.displayName,
      this.status,
      this.token,
      this.contact,
      this.transfer});
}

/// ActionDetailsScreen arguments holder class
class ActionDetailsScreenArguments {
  final WalletAction action;
  final ImageProvider<dynamic> image;
  final String displayName;
  final String accountAddress;
  final String symbol;
  final String amount;
  final Contact contact;
  ActionDetailsScreenArguments(
      {this.action,
      this.image,
      this.displayName,
      this.accountAddress,
      this.symbol,
      this.amount,
      this.contact});
}

/// TokenScreen arguments holder class
class TokenScreenArguments {
  final Key key;
  final String tokenAddress;
  TokenScreenArguments({this.key, this.tokenAddress});
}

/// TradeScreen arguments holder class
class TradeScreenArguments {
  final Key key;
  final Token primaryToken;
  TradeScreenArguments({this.key, this.primaryToken});
}

/// ReviewTradeScreen arguments holder class
class ReviewTradeScreenArguments {
  final Key key;
  final Map<dynamic, dynamic> exchangeSummry;
  final Token fromToken;
  final Token toToken;
  ReviewTradeScreenArguments(
      {this.key, this.exchangeSummry, this.fromToken, this.toToken});
}

/// ProfileScreen arguments holder class
class ProfileScreenArguments {
  final Key key;
  ProfileScreenArguments({this.key});
}