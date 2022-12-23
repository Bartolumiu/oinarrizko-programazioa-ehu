with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure collatz is
   Zenb, Kopurua, Batura: Integer := 1;
begin
   Put("Zenbaki bat sartu: ");
   Get(Zenb);
   
   Put("Collatzen sekuentzia: " & Integer'Image(Zenb));
   while (Zenb /= 1) loop
      Batura := Batura + Zenb;
      if (Zenb mod 2 = 0) then
         Zenb := Zenb / 2;
      else
         Zenb := 3 * Zenb + 1;
      end if;
      Kopurua := Kopurua + 1;
      Put(Zenb);
   end loop;
   
   New_Line;
   Put_Line("Zenbaki kopurua: " & Integer'Image(Kopurua));
   Put_Line("Batura: " & Integer'Image(Batura));
end collatz;
