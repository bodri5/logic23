Require Import Classical.

Section consultation.

Variables P Q R S U W E: Prop.

Section ex_B.
Hypothesis p1: Q.
Hypothesis p2: Q->R.
Hypothesis p3: R->S.
Goal (P\/S).
(*Write your proof here*)
pose proof (p2 p1) as H1.
pose proof (p3 H1) as H2.
pose proof (or_intror (A:=P) H2) as H3.
exact H3.
Qed.

End ex_B.

Section ex_C.
Hypothesis p1: S->P.
Hypothesis p2: Q->E.

Goal (P->Q)->(S->E).
(*Write your proof here*)
intros H1.
intros H2.
pose proof (p1 H2) as H3.
pose proof (H1 H3) as H4.
pose proof (p2 H4) as H5.
exact H5.
Qed.

End ex_C.

Section ex_extra.
Goal ((P/\Q)->R ) <-> (P->(Q->R)).
split.
intros H1.
intros H2.
intros H3.
pose proof (conj H2 H3) as H4.
pose proof (H1 H4) as H5.
exact H5.

intros H1.
intros H2.
pose proof (proj2 H2) as H3.
pose proof (proj1 H2) as H4.
pose proof (H1 H4) as H5.
pose proof (H5 H3) as H6.
exact H6.
Qed.














