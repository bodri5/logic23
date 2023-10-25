Require Import Classical.

Parameters P Q R S: Prop.

Section example0.

Hypothesis p1: P->Q.
Hypothesis p2: ~Q.
Goal ~P.
Proof.
  unfold not in p2.
  unfold not in |- *.
  intros H1.
  pose proof (p1 H1) as H2.
  pose proof (p2 H2) as H3.
  exact H3.
Qed.

End example0.


