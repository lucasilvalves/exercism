"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    counted = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for i in uppercase(strand)
        if haskey(counted, i)
            counted[i] += 1
        else
            throw(DomainError(strand))
        end
    end
    return counted
end
