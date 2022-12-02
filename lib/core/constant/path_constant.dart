enum PathConstant {
  home("/","home"),
  login("/login","login"),
  onboard("/onboard","onboard"),
  signup("/signup","signup");

  // can add more properties or getters/methods if needed
  final String value;
  final String name;

  // can use named parameters if you want
  const PathConstant(this.value,this.name);
}
