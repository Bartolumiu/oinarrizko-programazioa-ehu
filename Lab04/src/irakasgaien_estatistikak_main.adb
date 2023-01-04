with Ada.Text_IO;
use Ada.Text_IO;

with datu_motak; use datu_motak;

with datuak_kargatu, ehunekoa_kalkulatu, datuak_pantailaratu;

procedure irakasgaien_estatistikak_main is
   
   package Irakasgaiak_IO is new Ada.Text_IO.Enumeration_IO(Irakasgaiak);
   use Irakasgaiak_IO;
   
   MatrKopBek, AztKopBek: Irakasgaia_Bektore;
   EhunekoBek: Ehuneko_Bektore;
begin
   Put("Idatzi (AM, KTO, MD, OP, SDDO) irakasgaien matrikula kopurua: ");
   datuak_kargatu(MatrKopBek);
   
   Put("Idatzi (AM, KTO, MD, OP, SDDO) irakasgaien azterketa kopurua: ");
   datuak_kargatu(AztKopBek);
   
   ehunekoa_kalkulatu(MatrKopBek, AztKopBek, EhunekoBek);
   Put("Ebaluazio tasa: ");
   datuak_pantailaratu(EhunekoBek);
   
end irakasgaien_estatistikak_main;
