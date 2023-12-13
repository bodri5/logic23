(*
Mathematical logic Midterm Test II.
2023.12.13.

Name:  

Neptun code:  

Send the solutions to these emails (both):
norba@gamma.ttk.pte.hu
bodri.mh3@gmail.com
*)

Require Import Classical.
Section midterm2.

Variables P Q R W: Prop.

Section ex1.
Hypothesis p1: P->Q.
Hypothesis p2: R\/P.
Hypothesis p3: ~(Q\/R).
Goal  False.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex1.

Section ex2.
Hypothesis p1: ~(P\/Q).
Goal P<->Q.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex2.

Section ex3.
Hypothesis p1: P /\ (Q \/ R).
Hypothesis p2: P -> ~ R.
Goal Q\/W.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex3.

Section ex4.
(*There are no premises here, but with
the help of intros you can put
propositions into the context.*)
Goal (P->Q)->(P->R)->(Q->R->W)->P->W.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex4.

End midterm2.

