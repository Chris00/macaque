open Sql

let select table id =
  << {nom = t.nom; id = t.id} |
     t <- $table$;
     t.id = $int:id$ >>

(*
  sh infer.sh tests/parametred.ml
*)