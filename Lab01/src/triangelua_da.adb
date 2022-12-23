with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure triangelua_da is
   
   -- Aurrebaldintza:
   -- S = 3 zenbaki oso positibo <zenb1, zenb2, zenb3>

   -- Postbaldintza:
   -- I = Triangelu baten aldeen neurriak izan daitezkeen ala ez adierazi.
   -- Alde bat besteen baturaren berdina edo handiagoa bada, ez da triangelua osatuko.
   -- Triangelu aldekidea: 3 zenbakiak berdinak.
   -- Triangelu isoszelea: 2 alde berdin.
   -- Triangelu eskalenoa: Hiru aldeak desberdinak.

   -- Proba kasuak: (sarrera1,sarrera2,sarrera3,irteera)
   -- 2,2,4 -> Ez da triangelua
   -- 2,7,5 -> Ez da triangelua
   -- 4,7,9 -> Eskalenoa
   -- 6,6,6 -> Aldekidea
   -- 5,5,9 -> Isoszelea
   
   
   alde1, alde2, alde3: Integer;
begin
   Put("Sartu lehen aldearen luzera: ");
   Get(alde1);
   Put("Sartu bigarren aldearen luzera: ");
   Get(alde2);
   Put("Sartu hirugarren aldearen luzera: ");
   Get(alde3);
   
   if (alde1 >= (alde2+alde3) or else alde2 >= (alde1+alde3) or else alde3 >= (alde1+alde2)) then
      Put_Line("Ez da triangelua"); -- Alde bat besteen batura baino handiagoa.
   else
      if (alde1 = alde2) then -- 2 alde berdin
         if (alde1 = alde2) then -- 3 alde berdin
            Put_Line("Triangelu aldekidea da. 3 aldeak berdinak dira.");
         else
            Put_Line("Triangelu isoszelea da. Lehenengo bi aldeak berdinak dira.");
         end if;
      else
         if (alde1 = alde3) then
            Put_Line("Triangelu isoszelea da. Lehenengo eta hirugarren aldeak berdinak dira.");
         end if;
         if (alde2 = alde3) then
            Put_Line("Triangelu isoszelea da. Bigarren eta hirugarren aldeak berdinak dira.");
         end if;
         if (alde2 /= alde3) then
            Put_Line("Triangelu eskalenoa da. Hiru aldeak desberdinak dira.");
         end if;
      end if;
   end if;
end triangelua_da;
