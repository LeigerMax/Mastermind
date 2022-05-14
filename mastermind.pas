PROGRAM mastermind;
USES Crt,wincrt;
VAR  menu,select1,select2,select3,select4,time,win,chance,A,B,C,D,pro : integer ;
BEGIN
REPEAT
pro := 0;
     TEXTCOLOR (3);
     WRITELN('---------------------------------');
     WRITELN('          MASTERMIND');
     WRITELN('---------------------------------');
     TEXTCOLOR(White);
     WRITELN('1.Start');
     WRITELN('2.Rules');
     WRITELN('3.Exit');
     WRITELN('Choose a number');
     READLN(menu);
     IF (menu=3) THEN
        BEGIN
             pro := 2;
        END;
     WRITELN('---------------------------------');
 (*--------------------------------GAME --------------------------------------*)
     IF menu = 1 THEN
        BEGIN
     (*IA*)
      RANDOMIZE;
      select1:=random(6);
      select2:=random(6);
      select3:=random(6);
      select4:=random(6);
(*Player*)
(*---------------------------------------------------*)
time := 0; (*The number of times left to play*)
chance := 11; (*The number of chances left*)
WRITELN('Note your numbers against the letters'); (*The location of the counters*)
WRITELN('A | B | C | D');
REPEAT
win := 0; (*Arriver a 4 = Gagner*)
chance := chance - 1;
IF chance<10 THEN
   BEGIN
        WRITELN(' => You still have ',chance,' chance(s)');
   END;
WRITELN('A = ?');
READLN(A);
WRITELN('B = ?');
READLN(B);
WRITELN('C = ?');
READLN(C);
WRITELN('D = ?');
READLN(D);

WRITE(A,' | ',B,' | ' ,C,' | ',D, ' |  ');
IF(A=select1) THEN
  BEGIN
    TEXTCOLOR (2) ;
    WRITE('o');
    win := win+1;
    TEXTCOLOR(White);
  END
ELSE IF (select1=B) or (select1=C) or (select1=D) THEN
  BEGIN
    TEXTCOLOR (4);
    WRITE ('X');
    TEXTCOLOR(White);
  END;
IF (B=select2) THEN
  BEGIN
    TEXTCOLOR (2);
    WRITE('o');
    win := win+1;
    TEXTCOLOR(White);
  END
ELSE IF (select2=A) or (select2=C) or (select2=D) THEN
  BEGIN
    TEXTCOLOR (4);
    WRITE ('X');
    TEXTCOLOR(White);
  END;
IF (C=select3) THEN
  BEGIN
    TEXTCOLOR (2);
    WRITE('o');
    win := win+1;
    TEXTCOLOR(White);
  END
ELSE IF (select3=A) or (select3=B) or (select3=D) THEN
  BEGIN
    TEXTCOLOR (4);
    WRITE ('X');
    TEXTCOLOR(White);
  END;
IF (D=select4) THEN
  BEGIN
    TEXTCOLOR (2);
    WRITE('o');
    win := win+1;
    TEXTCOLOR(White);
  END
ELSE IF (select4=A) or (select4=C) or (select4=B) THEN
  BEGIN
    TEXTCOLOR (4);
    WRITE ('X');
    TEXTCOLOR(White);
  END;
time := time+1;
UNTIL (time=10) or (win=4); (*Fin jeu*)
IF (win=4) THEN
   BEGIN
   TEXTCOLOR (2);
   WRITELN(' ');
   WRITELN('******************************** ');
   WRITELN('*         You WIN	             *');
   WRITELN('******************************** ');
   TEXTCOLOR (3);
   WRITELN('Do you want to return to the menu? 1 = Yes / 2 = No ');
   READLN(pro);
   TEXTCOLOR(White);
   END
ELSE IF (win<4) THEN
   BEGIN
   TEXTCOLOR (4) ;
   WRITELN(' ');
   WRITELN('******************************** ');
   WRITELN('*       You have lost          *');
   WRITELN('*         The answer  :        *');
   WRITELN('*A : ',select1,' | B : ',select2,' | C : ',select3, ' | D : ',select4,' *');
   WRITELN('******************************** ');
   TEXTCOLOR (3) ;
   WRITELN('Do you want to return to the menu? 1 = Yes / 2 = No');
   READLN(pro);
   TEXTCOLOR(White);
   END
END;
 (*--------------------------------Rules --------------------------------------*)
      IF menu = 2 THEN  (* Rules *)
        BEGIN
           WRITELN('Rules :');
           WRITELN('In the program, 6 different counters will be used, these counters will be numbers. ');
           WRITELN('Among these 6 pieces, the computer will take 4 of them..');
           WRITELN('The user will have 10 tries to find the combination which will be chosen randomly. .');
           WRITELN('Next to the pieces the player has chosen, indicators will be written on the side, to show : ');
           WRITELN('- The number of counters correctly placed with O. ');
           WRITELN('- he number of counters with the right number, but wrongly placed, with X. ');
	     WRITELN('If the user does not find the combination, it will be revealed by the game. ');
           TEXTCOLOR (3);
           WRITELN('Do you want to return to the menu? 1 = Yes / 2 = No');
           READLN(pro);
           TEXTCOLOR(White);
        END;
UNTIL (pro=2);
END.
