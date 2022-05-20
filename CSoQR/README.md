# Sequences of perfect powers with perfect power differences

Area: number theory

A covering system is a finite set of congruences a_k (mod n_k), for the sake of convenience hereby denoted with an ordered pair (a_k, n_k), such that all integers are congruent to a_i mod n_i.

A number q is a quadratic residue of a number n iff there exists some number x such that x^2 is congruent to q (mod n).

This project examines whether there are covering systems composed entirely of (a_i, n_i) where a_i is a quadratic residue mod n.

## Solution

It can be conclusively proven that the only such covering systems must contain either both (0, 2) and (1, 2), or (0, 1), in which case it is trivial.

First, we note that proving that there does not exist such a covering system can be done by showing that no matter what attempted covering system we use, there is some number not covered.

Next, we note that if a_i > 1 is a quadratic residue mod p_1^k_1 * p_2^k_2 * ... * p_m^k^m, then a_i is a quadratic residue mod p_1, p_2, ..., p_m.

This can be easily proven through noting that if a_i is a quadratic residue mod p_1^k_1 * p_2^k_2 * ... * p_m^k^m, then we can say that there exists some x such that x^2 = (p_1^k_1 * p_2^k_2 * ... * p_m^k^m) * k + a_i for some k. This is equal to (p_1^k_1 * p_2^k_2 * ... * p_l^(k_l-1) * ... * p_m^k^m) * p_l * k + a_i, meaning that x^2 is congruent to a_i (mod p_i) as well, meaning that a_i is also a quadratic residue mod (p_i).

This means that if we have a covering system composed of composite n_i, then this implies that the covering system using a_i (mod p_1), a_i (mod p_2), ... is also valid as well, as a_i is a quadratic residue for each p, and x being congruent to a_i (mod p_1^k_1 * p_2^k_2 * ... * p_m^k^m) implies that x is congruent to a_i mod each p.

As such, all we have to do is prove that there is no covering system of quadratic residues in the case where each n_i is prime except for in the cases above.

Proving this is a simple consequence of two things: the Chinese remainder theorem, and the fact that quadratic nonresidues exist for n_i > 2.

We prove the latter, since the former is practically a given: note that if x^2 is congruent to q (mod n) then (n - x)^2 is congruent to q (mod n) as well. This means that 0 and n will have the same residue, 1 and n - 1 will too, and so on.

When n is odd, there are (n+1)/2 pairs (0, n), (1, n-1), ..., ((n-1)/2, (n+1)/2) which have the same residue. Note that n > 1 implies n + 1 < 2n implies (n+1)/2 < n. This means that if odd n > 1, then the number of distinct residues must be less than n, and since the important values 0 through n - 1 number exactly n, there must be some nonresidue in that set.

Similarly, when n is even, there are n / 2 + 1 pairs (0, n), (1, n-1), ..., (n/2, n/2) which have the same residue. Once again, n > 2 implies 2n > n + 2 implies that n / 2 + 1 < n, meaning that if even n > 2, then the number of distinct residues must be less than n, and thus there must be some nonresidue in that set.

This proves that quadratic nonresidues exist for n_i > 2.

Now consider any potential covering system of quadratic residues where each n_i is prime, and (0, 2) and (1, 2) do not both show up.

For each n_i, if n_i is 2, then since at least one of the two congruences does not show up, we can take one of whichever congruence doesn't show up, and if n_i is some other prime, we can take some quadratic nonresidue, which we proved earlier must exist.

This collection of congruences is a collection of congruences where each n_i are distinct primes and thus coprime, meaning that, by the Chinese remainder theorem, there must be some number (an infinite number of them, according to some congruence) that satisfies all of them.

This number, in satisfying every congruence representing a quadratic nonresidue, and in avoiding whichever pair (0, 2) or (1, 2) we have forbidden, thus must not be covered by the system.

This means that for any potential covering system of quadratic residues with primes we choose, there must be some number which isn't covered. We conclude that no such covering system may exist.

Also note that another similar question, whether there are any covering systems of quadratic nonresidues, is conclusively false. Consider 1. 1 is always congruent to 1 (mod n) regardless of the choice of n. 1 is also always a quadratic residue of n, since 1^2 = 1 is congruent to 1 (mod n). This means that since 1 (mod n) is never a congruence with a quadratic nonresidue, and 1 must be of the form 1 (mod n), no covering system of quadratic nonresidues covers it.