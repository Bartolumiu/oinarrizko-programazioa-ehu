with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with Ada.Numerics.Discrete_Random; -- Random Numbers

procedure ezkutuko_zenbakia_bilatu is
   Saiakerak, Sarrera: Integer := 1;
   
   -- Random Numbers: https://craftofcoding.wordpress.com/2020/02/14/coding-ada-random-numbers/
   type randRange is range 1..100;
   package Rand_Int is new Ada.Numerics.Discrete_Random(randRange);
   use Rand_Int;
   gen: Generator;
   Ezkutua: randRange;
   -- Random Numbers
   
begin
   -- Ezkutukoa sortu HASIERA
   reset(gen);
   Ezkutua := random(gen);
   -- Ezkutukoa sortu AMAIERA

   Put("Sartu zenbaki bat [1-100]: ");
   Get(Sarrera);
   
   while (Sarrera /= Integer(Ezkutua)) loop
      if (Sarrera > Integer(Ezkutua)) then
         Put_Line("Zenbakia txikiagoa da. Beste zenbaki bat sartu: ");
      else
         Put_Line("Zenbakia handiagoa da. Beste zenbaki bat sartu: ");
      end if;
      Get(Sarrera);
      Saiakerak := Saiakerak + 1;
   end loop;
   
   Put_Line("Asmatu duzu zenbakia!");
   Put_Line("Erabilitako saiakerak: " & Integer'Image(Saiakerak));
end ezkutuko_zenbakia_bilatu;
