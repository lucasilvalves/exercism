using StringDistances
"Your optional docstring here"
function distance(a, b)
    hamming_distance = Hamming()
    return isequal(length(a), length(b)) ? hamming_distance(a,b) : throw(ArgumentError("Lenghts of the DNAs differ."))
end
