with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure zenbaki_positiboak_eta_negatiboak is
   Zenb : Integer := Integer'First; -- Balioarekin hasieratu 0 ez izateko, bestela edozein zenbaki izan daiteke!
   KontNeg, BaturaPos : Integer := 0;
begin
   Put("Sartu zenbaki sekuentzia eta 0rekin amaitu: ");
   while (Zenb /= 0) loop
      Get(Zenb);
      if (Zenb = 0) then
         null;
      else
         if (Zenb > 0) then
            BaturaPos := BaturaPos + Zenb;
         else
            KontNeg := KontNeg + 1;
         end if;
      end if;
      
   end loop;
   Put_Line(Integer'Image(KontNeg) & " zenbaki negatibo.");
   Put_Line("Zenbaki positiboen batura: " & Integer'Image(BaturaPos));
end zenbaki_positiboak_eta_negatiboak;
