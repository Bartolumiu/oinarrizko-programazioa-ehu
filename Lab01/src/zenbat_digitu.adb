with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure zenbat_digitu is
   Zenb, Kont: Natural;
begin
   Kont := 0; -- Kontagailua Hasieratu
   
   Put("Zenbakia sartu: ");
   Get(Zenb);
   
   while Zenb /= 0 loop
      Zenb := Zenb / 10; -- Natural motakoa denez (0tik gorako zenbaki osoak), zenbaki hamartarrak ez dira gordetzen.
      Kont := Kont + 1;
   end loop;
   Put_Line(Integer'Image(Kont) & " digitu");
end zenbat_digitu;
