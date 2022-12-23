with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with igarren_digitua_ordeztu;

procedure igarren_digitua_ordeztu_main is
   Zenbakia, Posizioa: Positive;
   Balioa: Natural;
begin
   Put("Sartu zenbakia: ");
   Get(Zenbakia);
   
   Put("Sartu ordezkatzeko posizioa (eskuinetik hasita): ");
   Get(Posizioa);
   
   Put("Sartu ordezkatzeko balioa: ");
   Get(Balioa);
   
   Put_Line("Sartutako zenbakia: " & Integer'Image(Zenbakia));
   igarren_digitua_ordeztu(Zenbakia, Posizioa, Balioa);
   Put_Line("Zenbaki berria: " & Integer'Image(Zenbakia));
end igarren_digitua_ordeztu_main;
