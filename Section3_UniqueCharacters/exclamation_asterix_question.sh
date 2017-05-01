# exclamation !, which is the negation


# asterix (*), the wildcard
# $ rm t*
# it will remove all the files that starts with t

let var=100*10
let var2=100**3

echo "$var $var2"

# ? -test operator. Here works like the ternary operator
var1=10
echo $(( var2 = var1<20?1:0))
