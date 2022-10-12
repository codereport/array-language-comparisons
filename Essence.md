![image](https://user-images.githubusercontent.com/36027403/190033537-d9337404-e1f5-49dd-88b9-5824f4c9998e.png)

[Original Tweet](https://twitter.com/code_report/status/1569808096654163969)

## The Essence of Array Programming

### 1. "Higher Order Functions"

||Name||Reduce||Scan||Outer Product|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|APL|Operators <br> Adverbs|:green_heart:|`/ (reduce)` <br> `⌿ (reduce first)`|:green_heart:|`\ (scan)` <br> `⍀ (scan first)`|:green_heart:|`∘. (outer product)`|
|J|Adverbs & <br> Conjunctions|:green_heart:|`/ (insert)`|:green_heart:|`\ (prefix)`|:green_heart:|`/ (table)`|
|BQN|Modifiers|:green_heart:|`´ (fold)`<br>`˝ (insert)`|:green_heart:|`` ` (scan)``|:green_heart:|`⌜ (table)`|
|Q|Iterators|:green_heart:|`/`<br>`over`|:green_heart:|`\`<br>`scan`|:green_heart:|`/:\:`|
|Julia|Functions|:green_heart:|`reduce`|:green_heart:|`accumulate`|:yellow_heart:|`broadcast`
|NumPy|Functions|:green_heart:|`_.reduce()`|:green_heart:|`_.accumulate()`|:green_heart:|`_.outer()`|
|R|Functions|:green_heart:|`Reduce`|:green_heart:|`Reduce(accumulate=TRUE)`|:green_heart:|`outer`|
|Nial|Transformers|:green_heart:|`REDUCE`|:green_heart:|`ACCUMULATE`|:green_heart:|`OUTER`|
|Futhark|Functions<br>SOAC|:green_heart:|`foldl/r`<br>`reduce(_comm)`|:green_heart:|`scan`|:yellow_heart:|`outer_product`|
|SaC||:heart:|-|:heart:|-|:heart:|-|
|ArrayFire||:heart:|-|:heart:|-|:heart:|-|

### 2. Language Features

||Booleans = 0 & 1|Strings are Character Arrays|
|:-:|:-:|:-:|
|APL|:green_heart:|:green_heart:|
|J|:green_heart:|:green_heart:|
|BQN|:green_heart:|:green_heart:|
|Q|:green_heart:|:green_heart:|
|Julia|:yellow_heart:|:heart:|
|NumPy|:yellow_heart:|:heart:|
|R|:yellow_heart:|:heart:|
|Nial|:green_heart:|:green_heart:|
|Futhark|:heart:|:green_heart:|
|SaC|:heart:|:heart:|
|ArrayFire|:heart:|:heart:|
