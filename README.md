# Forwarder

This is an example how to transform a backward rule into forward rules.

## Usage

Backward rules need to use the `<http://example.org/ns#backward>` prefix:

```
@prefix math: <http://www.w3.org/2000/10/swap/math#>.
@prefix : <http://example.org/ns#>.

{ 
    ?X :moreInterestingThan ?Y
} 
:backward 
{
    ?X math:greaterThan ?Y .
    ?Y math:greaterThan 0 .
}.
```

## Example

```
./test.sh examples/demo.n3 > examples/demo.n3.answer
```