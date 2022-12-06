enum PathConstant {
  home("/", "home"),
  login("/login", "login"),
  onboard("/onboard", "onboard"),
  dashboard("/dashboard", "dashboard"),
  items("/items", "items"),
  lowStock("lowStock", "lowStock"),
  inventorySummary("inventorySummary", "inventorySummary"),
  createFolder("createFolder", "createFolder"),
  createFile("createFile", "createFile"),
  qtyChanges("qtyChanges", "qtyChanges"),
  moveSummary("moveSummary", "moveSummary"),
  transactionReport("transactionReport", "transactionReport"),
  itemsSearch("itemsSearch", "itemsSearch"),
  userProfile("userProfile", "userProfile"),
  insideSettings("insideSettings", "insideSettings"),
  companyDetail("companyDetail", "companyDetail"),
  report("report", "report"),
  manageTag("manageTag", "manageTag"),
  customField("customField", "customField"),
  sync("sync", "sync"),
  preferences("preferences", "preferences"),
  activityHistory("activityHistory", "activityHistory"),
  bulkImport("bulkImport", "bulkImport"),
  helpSupport("helpSupport", "helpSupport"),
  setPassword("setPassword", "setPassword"),
  search("/search", "search"),
  notifications("/notifications", "notifications"),
  settings("/settings", "settings"),
  signup("/signup", "signup");

  final String value;
  final String name;

  const PathConstant(this.value, this.name);
}
