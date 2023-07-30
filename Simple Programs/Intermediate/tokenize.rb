def tokenize(string,separators)
    for i in 0..separators.length-1 do
    string = string.gsub(separators[i].to_s, " ")
    end
    return string.split(" ")
end