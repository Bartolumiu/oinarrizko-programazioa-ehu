package datu_motak is

   type Oso_Bektore is array (Integer range <>) of Integer;
   type Irakasgaiak is (AM, KTO, MD, OP, SDDO);
   type Irakasgaia_Bektore is array (Irakasgaiak) of Integer;
   type Ehuneko_Bektore is array (Irakasgaiak) of Float;

end datu_motak;
