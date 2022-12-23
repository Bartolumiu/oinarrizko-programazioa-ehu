procedure igarren_digitua_ordeztu (Zenbakia: in out Positive; Posizioa: in Positive; Balioa: in Natural) is
   Laguntzailea: Natural := Zenbakia;
   LaguntzaileaReverse: Natural := 0;
   pos: Integer := 1;
begin
   while pos < Posizioa and then Laguntzailea /= 0 loop
      LaguntzaileaReverse := LaguntzaileaReverse * 10 + Laguntzailea rem 10;
      Laguntzailea := Laguntzailea / 10;
      pos := pos + 1;
   end loop;
   
   -- Balioa sartu
   Laguntzailea := Laguntzailea / 10;
   LaguntzaileaReverse := LaguntzaileaReverse * 10 + Balioa;
   
   -- Digituak berriz sartu hasierako zenbakian
   while LaguntzaileaReverse /= 0 loop
      Laguntzailea := Laguntzailea * 10 + LaguntzaileaReverse rem 10;
      LaguntzaileaReverse := LaguntzaileaReverse / 10;
   end loop;
   
   Zenbakia := Laguntzailea;
end igarren_digitua_ordeztu;
