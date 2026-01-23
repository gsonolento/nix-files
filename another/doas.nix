{config, pkgs, ...}:
{
 security.doas = {
  enable = true;
  extraRules = [{
    users = ["alice"];
    keepEnv = true;
    persist = true;
  }];
 };
}