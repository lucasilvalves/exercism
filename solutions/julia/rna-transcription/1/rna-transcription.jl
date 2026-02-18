function to_rna(dna)
    comp_dict = Dict('A' => 'U', 'C' => 'G', 'G' => 'C', 'T' => 'A')
    return join([comp_dict[c] for c in dna])
end
