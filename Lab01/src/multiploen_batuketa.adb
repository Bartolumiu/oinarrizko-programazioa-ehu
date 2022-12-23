with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure multiploen_batuketa is
   -- Aurrebaldintza:
   -- S = 1 zenbaki oso positibo <zenb>

   -- Postbaldintza:
   -- I = 3ren multiplo diren lehen zenb zenbakien lotura.

   -- Proba kasuak: (sarrera,irteera)

   Zenb, Batura: Integer := 0;
begin
   Put("Sartu zenbaki bat: ");
   Get(Zenb);
   for i in 1..Zenb loop
      Batura := Batura + 1;
   end loop;
   Put_Line("Zenbakien batura: " & Integer'Image(Batura));
end multiploen_batuketa;
