{ ... }:

{
  programs.git.includes = [
    {
      condition = "gitdir:~/Projects/work/";
      contents = {
        user = {
          name = "Savely Krasovsky";
          email = "skrasovskiy@ozon.ru";
          signingKey = "3D68247F98B4ADA1B1D852F9720200BABE066085";
        };

        gpg.format = "openpgp";
        commit.gpgSign = true;
        tag.gpgSign = true;
      };
    }
  ];
}
