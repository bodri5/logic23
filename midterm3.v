(*
Mathematical logic Midterm Test retake.
2023.12.19.

Name:

Neptun code:

Send the solutions to this email:
bodri.mh3@gmail.com
*)


Require Import Classical.


Section midterm3.

Variables P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: P /\ (Q /\ R).
Hypothesis pr2: (S /\ E) /\ U.
Hypothesis pr3: E -> W.
Goal (Q /\ P) /\ W.

Abort.
End exercise1a.


Section exercise1b.
Hypothesis pr1: Q.
Hypothesis pr2: Q->P \/ R.
Hypothesis pr3: R->S.
Goal P\/S.

Abort.
End exercise1b.


Section exercise1c.
Hypothesis pr1: S->P.
Hypothesis pr2: Q -> E.
Goal (P->Q) -> (S->E).

Abort.
End exercise1c.


Section exercise1d.

Hypothesis pr1: (P \/ ~S) <-> (R /\ S ).
Hypothesis pr2: R->S.
Goal R -> P.

Abort.
End exercise1d.

End midterm3.
