function bikoitia_da (Zenbakia: in Integer) return Boolean is
begin
   case (Zenbakia mod 2) is
      when 0 => return True;
      when others => return False;
   end case;
end bikoitia_da;
