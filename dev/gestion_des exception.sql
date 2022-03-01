gestion des exception dans des divisions par zero : 
do $$ 

declare
  resultat integer;
begin
   resultat:= 1/1;
   
  raise notice  'LE RESULTAT EST %' ,resultat;
  exception 
  when division_by_zero then
  raise notice 'division par zero impossible';
end  $$;