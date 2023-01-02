with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with datu_motak; use datu_motak;

with lehen_zenbaki_lehenaren_pos_eta_balioa_lortu, zenbaki_guztiak_lehenak, alderantziz_jarri, igarrenean_txertatu_desplazatuz;

procedure oso_bektoreak_main is
   Zenb : Integer;
   Zenb_Bek : Oso_Bektore(1..10);
   Posizioa : Natural;
   
   package BooleanIO is new Ada.Text_IO.Enumeration_IO (Boolean);
   use BooleanIO;
begin
   Zenb_Bek := (3, 13, 17, 23, 37, 53, 113, 83, 2, 1);
   lehen_zenbaki_lehenaren_pos_eta_balioa_lortu(Zenb_Bek, Posizioa, Zenb);
   Put_Line("Lehen zenbaki lehenaren posizioa: " & Natural'Image(Posizioa));
   Put_Line("Lehen zenbaki lehenaren balioa: " & Integer'Image(Zenb));
   
   Put_Line("Zenbaki guztiak lehenak dira: " & Boolean'Image(zenbaki_guztiak_lehenak(Zenb_Bek)));
   
   Put_Line("Zenbaki guztiak alderantziz: ");
   for I in Zenb_Bek'Range loop
      Put(Zenb_Bek(i));
   end loop;
   New_Line;
   
   Put("Sartu txertatzeko posizioa [1-10]: ");
   Get(Posizioa);
   Put("Sartu txertatzeko balioa: ");
   Get(Zenb);
   igarrenean_txertatu_desplazatuz(Zenb_Bek, Posizioa, Zenb);
   
   Put_Line("Zerrenda eguneratua:");
   for I in Zenb_Bek'Range loop
      Put(Zenb_Bek(I));
   end loop;
end oso_bektoreak_main;
