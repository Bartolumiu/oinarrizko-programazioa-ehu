with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with telefonoak_zenbatu;

procedure telefonoak_zenbatu_main is
   Mugikorra, Finkoa, Ezeztatuak, Zenbakia: Natural := 0;
begin
   Put("Sartu telefonoa edo 0 programa bukatzeko: ");
   Get(Zenbakia);
   
   while (Zenbakia /= 0) loop
      case (telefonoak_zenbatu(Zenbakia)) is
         when 'M' => Mugikorra := Mugikorra + 1; Put("Sartutako zenbakia mugikorra zen. Beste bat sartu edo 0: ");
         when 'F' => Finkoa := Finkoa + 1; Put("Sartutako zenbakia finkoa zen. Beste bat sartu edo 0: ");
         when 'E' => Ezeztatuak := Ezeztatuak + 1; Put("Sartutako zenbakia ez zen telefonoa. Beste bat sartu edo 0: ");
         when others => null;
      end case;
      Get(Zenbakia);
   end loop;
   
   New_Line;
   Put_Line(Integer'Image(Mugikorra) & " zenbaki mugikor.");
   Put_Line(Integer'Image(Finkoa) & " zenbaki finko.");
   Put_Line(Integer'Image(Ezeztatuak) & " zenbaki oker.");
end telefonoak_zenbatu_main;
