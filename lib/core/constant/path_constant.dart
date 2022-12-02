enum PathConstant {
  home("/", "home"),
  login("/login", "login"),
  onboard("/onboard", "onboard"),
  dashboard("/dashboard", "dashboard"),
  items("/items", "items"),
  search("/search", "search"),
  notifications("/notifications", "notifications"),
  settings("/settings", "settings"),
  signup("/signup", "signup");

 
  final String value;
  final String name;

 
  const PathConstant(this.value, this.name);
}
