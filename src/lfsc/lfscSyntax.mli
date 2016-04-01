(**************************************************************************)
(*                                                                        *)
(*     SMTCoq                                                             *)
(*     Copyright (C) 2011 - 2016                                          *)
(*                                                                        *)
(*     Michaël Armand                                                     *)
(*     Benjamin Grégoire                                                  *)
(*     Chantal Keller                                                     *)
(*                                                                        *)
(*     Inria - École Polytechnique - MSR-Inria Joint Lab                  *)
(*     Université Paris-Sud                                               *)
(*                                                                        *)
(*   This file is distributed under the terms of the CeCILL-C licence     *)
(*                                                                        *)
(**************************************************************************)

type mpz = Big_int.big_int
type mpq = Num.num
             
type name = Name of string | S_Hole of int
type symbol = { sname : name; stype : term }

and dterm =
  | Type
  | Kind
  | Mpz
  | Mpq
  | Const of symbol
  | App of term * term list
  | Int of mpz
  | Rat of mpq
  | Pi of symbol * term
  | Lambda of symbol * term
  | Hole of int
  | Ptr of term
  | SideCond of string * term list * term * term

and term = { mutable value: dterm; ttype: term }

val term_equal : term -> term -> bool

val compare_term : term -> term -> int

type command =
  | Check of term
  | Define of string * term
  | Declare of string * term


type proof = command list


exception TypingError of term * term

val lfsc_type : term

val kind : term

val mpz : term

val mpq : term

val mk_mpz : mpz -> term

val mk_mpq : mpq -> term

(* val unify : term -> term -> unit *)

val  get_real : term -> term

val mk_symbol : string -> term -> symbol

val mk_symbol_hole : term -> symbol

val mk_const : string -> term

val symbol_to_const : symbol -> term

val mk_app : term -> term list -> term

val mk_hole : term -> term

val mk_hole_hole : unit -> term

val mk_pi : symbol -> term -> term

val mk_lambda : symbol -> term -> term

val mk_ascr : term -> term -> term


val print_term : Format.formatter -> term -> unit
val print_term_type : Format.formatter -> term -> unit

val print_symbol : Format.formatter -> symbol -> unit
  
val print_command : Format.formatter -> command -> unit

val print_proof : Format.formatter -> proof -> unit


val mk_declare : string -> term -> unit

val mk_define : string -> term -> unit

val mk_check : term -> unit



val register_symbol : symbol -> unit

val remove_symbol : symbol -> unit


val add_definition : symbol -> term -> unit

val remove_definition : symbol -> unit


val callbacks_table : (string, term list -> term) Hashtbl.t


val add_sc : string -> term list -> term -> term -> term