# Conditionals
{id: conditionals}

## Comparision Operators
{id: comparision-operators}
{i: ==}
{i: <}
{i: <=}
{i: >}
{i: >=}

* ==, <, > <=, >=

## Spaceship operator
{id: spaceship-operator}
{i: <=>}

* Spaceship operator <=> returns -1, 0, or 1

![](examples/other/spaceship_operator.cr)


## if statement
{id: if}
{i: if}
{i: else}
{i: end}

![](examples/conditionals/if.cr)

## elsif
{id: elsif}
{i: elsif}

![](examples/conditionals/deep_if.cr)

![](examples/conditionals/elsif.cr)

## unless statement
{id: unless}
{i: unless}

![](examples/conditionals/unless.cr)

* ameba: [C] Style/UnlessElse: Favour if over unless with else

## Suffix if
{id: suffix-if}
{i: if}

![](examples/conditionals/suffix_if.cr)

## Suffix unless
{id: suffix-unless}
{i: unless}

![](examples/conditionals/suffix_unless.cr)

## Logical operators
{id: logical-opeators}

```
&&
||
!
```

## Truth-table
{id: truth-table}

![](examples/conditionals/operators.cr)

## case / when
{id: case}
{i: case}
{i: switch}
{i: when}

![](examples/conditionals/case.cr)

* You cannot have the same value in `when` twice (Crystal protects you from such mistake)

## case of types
{id: case-of-types}

![](examples/conditionals/case_when_on_type.cr)

## Ternary operator and or to set default value
{id: default-value}
{i:||}
{i: ?:}

![](examples/conditionals/default.cr)


