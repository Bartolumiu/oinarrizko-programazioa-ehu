with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

with datu_motak; use datu_motak;

procedure datuak_pantailaratu (EhunekoBek: in Ehuneko_Bektore) is
begin
   for I in EhunekoBek'Range loop
      Put_Line(Irakasgaiak'Image(I) & " ikasgaiaren ehunekoa: " & Float'Image(EhunekoBek(I)));
   end loop;
end datuak_pantailaratu;
