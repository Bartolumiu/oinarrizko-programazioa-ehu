with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with bikoitia_da;

procedure bikoitia_da_main is
   Zenbakia: Integer;
begin
   Put("Zenbakia sartu: ");
   Get(Zenbakia);
   
   case bikoitia_da(Zenbakia) is
      when True => Put_Line(Integer'Image(Zenbakia) & " zenbakia bikoitia da.");
      when others => Put_Line(Integer'Image(Zenbakia) & " zenbakia bakoitia da.");
   end case;
end bikoitia_da_main;
