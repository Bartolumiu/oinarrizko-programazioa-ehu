function lehena_da (Zenb: in Positive) return Boolean is
   I : Integer := 2;
   LehenaDa : Boolean := True;
   Aldiak : Integer := 0;
begin
   if (Zenb = 1) then
      return True;
   else
      while I < Zenb loop
         if Zenb mod I = 0 then
            LehenaDa := False;
         end if;
         I := I + 1;
      end loop;
      return LehenaDa;
   end if;
end lehena_da;
