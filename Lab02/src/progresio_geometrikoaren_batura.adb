with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure progresio_geometrikoaren_batura is
   Oinarria, Arrazoia, Mugarria, Batura: Integer := 0;
begin
   Put("Sartu progresioaren oinarria: ");
   Get(Oinarria);
   Put("Sartu progresioaren arrazoia: ");
   Get(Arrazoia);
   Put("Sartu progresioaren mugarria: ");
   Get(Mugarria);
   
   while (Batura+Oinarria <= Mugarria) loop
      Put(Oinarria);
      Batura := Batura + Oinarria;
      Oinarria := Oinarria * Arrazoia;
   end loop;
   
   New_Line;
   Put_Line("Batura: " & Integer'Image(Batura));
end progresio_geometrikoaren_batura;
