const rootRoute = "/";

const dashBoardPageDisplayName = "dashBoard";
const dashBoardPageRoute = "/dashBoard";

const loginPageDisplayName = "login";
const loginPageRoute = "/login";

const freightChargePageDisplayName = "freightCharge";
const freightChargePageRoute = "/freightCharge";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> pageMenuItemRoutes = [
  MenuItem(dashBoardPageDisplayName, dashBoardPageRoute),
  MenuItem(loginPageDisplayName, loginPageRoute),
  MenuItem(freightChargePageDisplayName, freightChargePageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
