function to_rna(dna)
    comp_dict = Dict("A" => "U", "C" => "G", "G" => "C", "T" => "A")
    if all([haskey(comp_dict, key) for key in split(dna, "")])
        return join([comp_dict[string(c)] for c in dna])
    elseif isempty(dna)
        return ""
    else
        error()
    end
end
