(*
Mathematical logic Midterm Test II.
2023.12.13.

Name: Meghwar Shanker Lal 

Neptun code:  UPF6WZ

Send the solutions to these emails (both):
norba@gamma.ttk.pte.hu
bodri.mh3@gmail.com
*)

Require Import Classical.
Section ex1.
Variables P Q R : Prop.

Hypothesis p1: P -> Q.
Hypothesis p2: R \/ P.
Hypothesis p3: ~ (Q \/ R).

Goal False.
Proof.
unfold not in p3.
intros contra.
destruct p2 as [Hr | Hp].
- apply p3. left. right. exact Hr.
- apply p3. left. left. apply p1. exact Hp.
Qed.
End ex1.

Section ex2.
Variables P Q : Prop.
Hypothesis p1: ~(P \/ Q).

Goal P <-> Q.
Proof.
split.
- intros HP. 
exfalso. apply p1. left. exact HP.
- intros HQ. 
exfalso. apply p1. right. exact HQ.
Qed.
End ex2.




Section ex3.
Variables P Q R W : Prop.
Hypothesis p1: P /\ (Q \/ R).
Hypothesis p2: P -> ~ R.

Goal Q \/ W.
Proof.
destruct p1 as [HP [HQ | HR]].
- left. exact HQ.
- destruct (classic Q) as [HQ | HNQ].
+ left. exact HQ.
 + right. 
Qed.
End ex3.

Section ex4.
Variables P Q R W : Prop.

Goal (P -> Q) -> (P -> R) -> (Q -> R -> W) -> P -> W.
Proof.
intros Hpq Hpr Hqr Hp.
apply Hpq in Hp as Hq.
apply Hpr in Hp as Hr.
apply Hqr with Hq Hr.
exact Hp.
Qed.
End ex4.

End midterm2.

