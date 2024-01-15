(*
Mathematical logic Midterm Test second retake.
2024.01.15.

Name:

Neptun code:

Send the solutions to this email:
bodri.mh3@gmail.com
*)


Require Import Classical.


Section midterm4.

Variables P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: (P /\ Q) /\ R.
Hypothesis pr2: (S /\ U) /\ E.
Hypothesis pr3: U -> W.
Goal (Q /\ P) /\ W.

Abort.
End exercise1a.


Section exercise1b.
Hypothesis pr1: Q.
Hypothesis pr2: Q -> P \/ R.
Hypothesis pr3: R -> S.
Goal P\/S.

Abort.
End exercise1b.


Section exercise1c.
Hypothesis pr1: S -> P.
Hypothesis pr2: S -> E.
Hypothesis pr3: (P \/ E) -> Q.
Goal S -> Q.

Abort.
End exercise1c.


Section exercise1d.

Hypothesis pr1: (R /\ S ) -> (P \/ ~S).
Hypothesis pr2: R->S.
Goal R -> P.

Abort.
End exercise1d.

End midterm4.
