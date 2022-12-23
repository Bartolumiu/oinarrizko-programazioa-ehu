with Ada.Text_IO;
use Ada.Text_IO;

procedure hutsuneak_ezabatu is
   SarreraTestua : Character := ' ';
begin
   Put("Sartu sarrera testua eta puntu batekin amaitu: ");
   while (SarreraTestua /= '.') loop
      Get(SarreraTestua);
      if (SarreraTestua /= ' ') then
         Put(SarreraTestua);
      end if;
   end loop;
end hutsuneak_ezabatu;
