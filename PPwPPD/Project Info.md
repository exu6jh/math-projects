# Sequences of perfect powers with perfect power differences

Area: number theory

Define the function a(k,0) = k and a(k,n+1) as being the lowest perfect power (i.e. n expressible as m^k where m >= 1, k > 1) such that a(k,n+1) - a(k,n) is also a perfect power, or 0 if no such perfect power exists.
This project examines properties of the function a(k,i) for fixed k.

## Background info:

Pillai's conjecture, attributed to S. S. Pillai, speculates that gaps in the sequence of perfect powers tend to infinity, and that, equivalently, the number of solutions for any given positive integer k to the problem x^a - y^b = k where x, y >= 1 and a, b > 1 is finite.
For some k there are even no known instances where some perfect power n also has the property that n + k is a perfect power. The list of k starts 6, 14, 34, 42, 50, ..., and is A074981 on OEIS.

## Properties

### Property 1

Property 1: if a(k,i) is a perfect power, then a(k,i+1) is a perfect power and greater than a(k,i) (i.e. if a(k,i) is a perfect power, there is always another least perfect power which can be added to make yet another perfect power.)
If n is a perfect power a^b for a >= 1, b > 2, then either a is even (i.e. congruent to 0 or 2 mod 4) and thus n is congruent to 0 mod 4, a is congruent to 1 mod 4 and thus n is congruent to 1 mod 4, or a is congruent to 3 mod 4 and thus n is congruent to either 1 or 3 mod 4 depending of if b is even or odd.
This means that all perfect powers are congruent to either 0, 1, or 3 mod 4.
If n is congruent to 0 mod 4 then n = 4m for some positive integer m. If n = 4 (i.e. m = 1) then we simply note that 4 + 2^2 = 2^3. Otherwise, 4m = 4(m-1) + 4, and (m - 1)^2 + 4(m - 1) + 4 = ((m - 1) + 2)^2, so we see that 4m + (m - 1)^2 = (m + 1)^2 => n + (m - 1)^2 = (m + 1)^2. Since m > 1 in this case, this means that there is a perfect power which, when added to n, yields another perfect power.
If n is congruent to 1 or 3 mod 4, then n = 2m + 1 for some nonnegative integer m. If m = 0 (i.e. n = 1) then we simply note that 1 + 2^3 = 3^2. Otherwise, m^2 + 2m + 1 = (m + 1)^2, so we see that m^2 + n = (m + 1)^2. Since m > 1, this means that there is a perfect power which, when added to n, yields another perfect power.
We see that if n is a perfect power, then there must be some perfect power which, when added to n, yields another perfect power. Since the set of perfect powers which are equal to n plus another perfect power must then be a nonempty set of positive integers, by the well-ordering principle, there is some least n + q such that both q and n + q are perfect powers.
We thus see that if a(k,i) is a perfect power, then there must be some least perfect power q such that a(k,i) + q is a perfect power. By definition, a(k,i+1) = a(k,i) + q. a(k,i), q > 0 by definition, so a(k,i+1) > a(k,i) > 0.

### Property 2

Property 2: for any given positive k and subsequence a(k,0) = k, either a(k,1) = 0 or the sequence of a(k,i) is strictly positive and increasing.
Given positive k, either there exists some perfect power q such that k + q is a perfect power or there exists none.
If the former holds, then the set of q is a nonempty set of positive integers, and by the well-ordering principle, there is some least q. It can be clearly seen then that a(k,1) = k + q. If the latter holds true, then a(k,1) = 0.
Now if a(k,1) = k + q is a perfect power, then by property 1, a(k,2) is a perfect power and greater than a(k,1). a(k,3) likewise is a perfect power and greater than a(k,2). Extending infinitely, we see that a(k,i) is always positive perfect powers and strictly increasing for i >= 1.
We simply lastly point out that a(k,0) = k is positive, and that a(k,1) - a(k,0) = k + q - k = q is a perfect power is thus positive, to show that the entire sequence of a(k,i) is strictly positive and increasing.

### Property 3

Property 3: if Pillai's conjecture holds, then for any k such that a(k,1) does not equal 0, a(k,i+1) - a(k,i) diverges to infinity as i diverges to infinity.
As per property 2, if a(k,1) is not 0, then the entire sequence of a(k,i) is strictly positive, increasing, and for i not equal to 0, composed of perfect powers.
a(k,i+1) - a(k,i) for i > 0 is thus the difference of increasingly larger perfect powers. Without going into any formal argument, it can be seen that if Pillai's conjecture holds, then the number of small gaps gets 'exhausted' and the value of a(k,n+1) - a(k,n) must diverge to infinity.

## Observations

### Observation 1

Some values of k yield sequences a(k,i) that coincide at some point. By the nature of the definition of the function a, if a(k1,i) = a(k2,j), then a(k1,i+1) = a(k2,j+1), a(k1,i+2) = a(k2,j+2), and so on. Thus we can denote two positive integers k1 and k2 as being coincident if their sequences are equal after some point.
Due to computing and knowledge limitations, I do not yet know if all positive numbers are coincident. That is one of the questions listed below. I have included information on coincident groups in another document (powerdiffs.txt.)

### Observation 2

After a certain while it appears that most (if not all) values in sequences, as well as differences, are squares. Whether there is a point after which all sequential values/differences are squares is something I ask below.

## Questions

### Question 1

Are all positive integers coincident? That is, for any positive integers k1, k2, does there always exist two positive integers i, j such that a(k1,i) = a(k2,j)?

### Question 2

For any positive integer k, are there infinite i such that a(k,i) is a perfect power with exponent > 2?

### Question 3

Similarly, for any positive integer k, are there infinite i such that a(k,i+1) - a(k,i) is a perfect power with exponent > 2?

### Question 4

If not, for any positive integer k, are there at least exist infinite i such that a(k,i+1) - a(k,i) < either (a(k,i)^2 - 1)^2 / 4 or (a(k,i)^2 / 4 - 1)^2 depending on if a(k,i) is odd or even respectively?
