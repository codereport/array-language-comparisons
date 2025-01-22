## PWC198 P1 - [Max Gap Count](https://theweeklychallenge.org/blog/perl-weekly-challenge-198/)

### Summary

|           |                         Solution                         | Link  |
| :-------: | :------------------------------------------------------: | :---: |
|    APL    |          `MaxGapCount ← {+/(⌈/=⊢)2-/(⊂⍤⍒⌷⊢)⍵}`           |       |
|    Kap    |                `MaxGapCount ⇐ +/⌈/⍛=2-/∨`                |
|  TinyAPL  |              `MaxGapCount ← {+⍆⌈⍆⊸=2-⍆↡⊵⍵}`              |
|     J     |       `MaxGapCount =. {{ +/ (= >./) 2-/\ \:~ y }}`       |       |
|    BQN    |             `MaxGapCount ← {+´⌈´⊸=-´˘2↕∨𝕩}`              |       |
|   Uiua    |              `MaxGapCount ← /+=/↥.≡/-◫2⊏⍏.`              |       |
|     Q     | `maxgapcount: { sum { x = max x } 1 _ (-) prior asc x }` |       |
|   Julia   |                          :soon:                          |       |
|  MATLAB   |                          :soon:                          |       |
|   NumPy   |                          :soon:                          |       |
|     R     |                          :soon:                          |       |
|   Nial    |                          :soon:                          |       |
|  Futhark  |                          :soon:                          |       |
|    Ivy    |                          :soon:                          |       |
|    SaC    |                          :soon:                          |       |
| ArrayFire |                          :soon:                          |       |
|   MatX    |                          :soon:                          |       |
