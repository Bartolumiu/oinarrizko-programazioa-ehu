with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with datu_motak; use datu_motak;

procedure datuak_kargatu (Bektorea: in out Irakasgaia_Bektore) is
begin
   for I in Bektorea'Range loop
      Get(Bektorea(I));
   end loop;
end datuak_kargatu;
