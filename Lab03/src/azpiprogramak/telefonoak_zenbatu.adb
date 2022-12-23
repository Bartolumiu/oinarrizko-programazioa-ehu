function telefonoak_zenbatu (Zenb: in Natural) return Character is
   zenbKopia: Natural := Zenb;
begin
   if (Zenb >= 600000000 and then Zenb <= 999999999) then
      while (zenbKopia > 10) loop
         zenbKopia := zenbKopia / 10;
      end loop;
      
      case (zenbKopia) is
         when 6 => return 'M';
         when 7 => return 'M';
         when 9 => return 'F';
         when others => return 'E';
      end case;
   else
      return 'E';
   end if;      
end telefonoak_zenbatu;
