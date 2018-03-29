with import <nixpkgs> {};
with pkgs.python27Packages;

buildPythonPackage rec {
  name = "buildbot-slave";
  src = ./.;
  propagatedBuildInputs = [ twisted dateutil jinja2 sqlalchemy_migrate  mock ];
}

