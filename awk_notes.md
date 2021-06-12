# Syntax
```
$> awk 'BEGIN{ awk-commands } /patterns/{ awk-commands } END{ awk-commands }
```
* BEGIN and END block are optionals


<br>
<br>
<br>
<br>

# Example Text file (marks.txt)
1) Amit Physics 80
2) Rahul Math 90
3) Shyam Biology 87
4) Kedar English 85
5) Hari History 89

## Print Column or fields
```
$> awk '{print $3 "\t" $4}' marks.txt
Physics 80
Math    90
Biology 87
English 85
History 89
```

## Print all lines by pattern (in this example all lines contain 'a')
```
$> awk '/a/' marks.txt
2) Rahul Math 90
3) Shyam Biology 87
4) Kedar English 85
5) Hari History 89
```

## Count lines matched a pattern
```
$> awk '/a/{++cnt} END{print "Count lines = ", cnt}' marks.txt
Count = 4
```

## Printing lines with more than 18 characters
```
$> awk 'length($0) > 18' marks.txt
3) Shyam Biology 87
4) Kedar English 85
```