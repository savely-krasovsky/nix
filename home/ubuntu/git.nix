{ ... }:

{
  programs.git.includes = [
    {
      condition = "gitdir:~/Projects/work/";
      contents = {
        user = {
          name = "Krasovskiy Saveliy Igorevich";
          email = "skrasovskiy@ozon.ru";
          signingKey = "A43215817A6E4AF81FF38840A0D6FB316FF65527";
        };
      };
    }
  ];
}
