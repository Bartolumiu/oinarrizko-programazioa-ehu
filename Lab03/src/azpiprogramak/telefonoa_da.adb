function telefonoa_da (Zenb: in Natural) return Boolean is
   zenbKopia : Natural := Zenb;
begin
   if (Zenb >= 600000000 and then Zenb <= 999999999) then
      while (zenbKopia > 10) loop
         zenbKopia := zenbKopia / 10;
      end loop;

      case (zenbKopia) is
         when 6 => return True;
         when 7 => return True;
         when 9 => return True;
         when others => return False;
      end case;
   else
      return False;
   end if;
end telefonoa_da;
