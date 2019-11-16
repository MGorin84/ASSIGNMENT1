require_relative "classes"

def test_birth_certificate
    test_toy = PlushToys.new("bear", "Teddy", "brown", "Policeman", ["cap", "sunnies"])
    test_toy.birth_certificate
    expexted_return = true
    actual_return = File.exist?("Teddy.txt")
    if actual_return == expexted_return
        "pass"
    else
        "fail"
    end
end

puts test_birth_certificate