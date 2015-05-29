# Bubble Sort

Sorting algorithms are one of the common domains for studying Computer Science
data structures and algorithms. The most straight forward is Bubble Sort.

## Theory

Bubble sort works by comparing and possibly swapping two values in a set. Say
we start with this set of numbers:

```
1 0 2 3 4 5
```

The algorithm would start with a variable `previous` pointing to the first element,
`1` and `current` pointing to the second value `0`. Then if `current` is
less than `previous` then the two values are *swapped*. The swap would take
place in this case. After that single swap the sequence would be:

```
0 1 2 3 4 5
```

The algorithm would restart with `previous` pointing at the first position and
`current` at the second position. `1` is not less than `0`, so the focus shifts
one spot to the right. `previous` now holds `1` and `current` holds `2`. They
do not need to be swapped. This repeats moving right one space at a time until
reaching the end of the set, meaning the set is sorted.

### Richer Example

Let's look at the sequence for a more out-of-order sequence:

```
Pre-Sequence Previous Current Swap? Post-Sequence

4 3 5 0 1       4        3      Y    3 4 5 0 1
3 4 5 0 1       3        4      N    3 4 5 0 1
3 4 5 0 1       4        5      N    3 4 5 0 1
3 4 5 0 1       5        0      Y    3 4 0 5 1
3 4 0 5 1       3        4      N    3 4 0 5 1
3 4 0 5 1       4        0      Y    3 0 4 5 1
3 0 4 5 1       3        0      Y    0 3 4 5 1
0 3 4 5 1       0        3      N    0 3 4 5 1
0 3 4 5 1       3        4      N    0 3 4 5 1
0 3 4 5 1       4        5      N    0 3 4 5 1
0 3 4 5 1       5        1      Y    0 3 4 1 5
0 3 4 1 5       0        3      N    0 3 4 1 5
0 3 4 1 5       3        4      N    0 3 4 1 5
0 3 4 1 5       4        1      Y    0 3 1 4 5
0 3 1 4 5       0        3      N    0 3 1 4 5
0 3 1 4 5       3        1      Y    0 1 3 4 5
0 1 3 4 5       0        1      N    0 1 3 4 5
0 1 3 4 5       1        3      N    0 1 3 4 5
0 1 3 4 5       3        4      N    0 1 3 4 5
0 1 3 4 5       4        5      N    0 1 3 4 5
0 1 3 4 5       5        nil
```

Once that `nil` pops up in `current` then we're done! We'd say that this run
of the algorithm made `7` swaps.
