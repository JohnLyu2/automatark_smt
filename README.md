**AutomatArk** [1] is a set of 19979 benchmarks based on a collection of real-world regex queries collected by Loris D’Antoni from the University of Wisconsin, Madison, USA. We, [the Z3 String Constraint Solver team](https://z3string.github.io/), translated the regular expressions in AutomatArk into SMT-LIB syntax, resulting in “simple” instances with a single regular expression membership predicate per instance, and more “complex” instances with 2–5 regular expression membership predicates (possibly negated) over a single variable per instance. These instances are originally created in [2], and now provided in a cleaned form, removing all redundant cases. To this extent, we provide a novel set of regular expression membership queries, with a total of 15995 instances. From a theoretical point of view, all of the instances belong to the fragment of simple regular expression membership queries without concatenation which is, in fact, decidable and PSPACE-complete (see e.g. [3]).

This repository contains the instances and satisfiability results acquired using modern state of the art string solvers. We got valid models for 10466 instances and annotated a tendency whether an instance is satisfiable or not based on a majority vote within the accompanying results.

[1] Loris D'Antoni and Fang Wang. AutomataArk. https://github.com/lorisdanto/automatark.  

[2] Murphy Berzish, Mitja Kulczynski, Federico Mora, Florin Manea, Joel Day, Dirk Nowotka and Vijay Ganesh (2021): An SMT Solver for Regular Expressions and Linear Arithmetic over String Length, Proc. CAV 2021, LNCS.  

[3] Murphy Berzish, Mitja Kulczynski, Federico Mora, Florin Manea, Joel Day, Dirk Nowotka and Vijay Ganesh (2021): String Theories involving Regular Membership Predicates: From Practice to Theory and Back, Proc. WORDS 2021, LNCS.

