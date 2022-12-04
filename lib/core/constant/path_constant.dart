enum PathConstant {
  home("/", "home"),
  login("/login", "login"),
  onboard("/onboard", "onboard"),
  dashboard("/dashboard", "dashboard"),
  items("/items", "items"),
  userProfile("/userProfile", "userProfile"),
  insideSettings("/insideSettings", "insideSettings"),
  companyDetail("/companyDetail", "companyDetail"),
  report("/report", "report"),
  activityHistory("/activityHistory", "activityHistory"),
  bulkImport("/bulkImport", "bulkImport"),
  helpSupport("/helpSupport", "helpSupport"),
  search("/search", "search"),
  notifications("/notifications", "notifications"),
  settings("/settings", "settings"),
  signup("/signup", "signup");

  final String value;
  final String name;

  const PathConstant(this.value, this.name);
}
