require_relative '../encrypt'
# 1. describe (telling the name of the method)
# 2. it (describes what the test is doing/out)
# 3. expect (call the method, and compare it to the expected result)

describe '#encrypt' do
  it 'should return an encrypted string when given a sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = String
    expect(actual).to be_a(expected)
  end

  it 'should return an encrypted string when given a sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted string when given special characters' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
