import 'package:flutter/cupertino.dart';
import 'package:freightquote/controllers/controllers.dart';
import 'package:freightquote/routers/router.dart';
import 'package:freightquote/routers/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: loginPageDisplayName,
    );
