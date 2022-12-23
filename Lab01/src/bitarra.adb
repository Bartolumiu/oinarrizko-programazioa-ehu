with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure bitarra is
   Zenb, Bitarra: Natural := 0;
begin
   Put("Sartu zenbaki bat 10 oinarrian: ");
   Get(Zenb);
   
   if (Zenb = 1) then
      Bitarra := 1;
   end if;
   
   while (Zenb /= 0) loop
      Bitarra := Bitarra * 10 + (Zenb mod 2);
      Zenb := Zenb / 2;
   end loop;
   
   -- Zenbakia alderantziz dago, beraz buelta eman behar zaio zenbakiari
   while (Bitarra /= 0) loop
      Zenb := Zenb * 10 + Bitarra rem 10;
      Bitarra := Bitarra / 10;
   end loop;
   
   Put_Line("Oinarri bitarrean: " & Integer'Image(Zenb));
end bitarra;
