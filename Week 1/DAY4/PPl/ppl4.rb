





require 'ruby-dictionary'


class Chain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain (word1, word2)




    end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")

chain = Chain.new(dictionary)



		#array1[index] = array2[index]
word1="cat"
word2="dog"

array1 = word1.split("")
array2 = word2.split("")
chain =[]

array1.each_with_index do |elemento,index|
	
	array1[index] = array2[index]

	chain << array1.join

end

print chain

chain2 = []

chain2.each_with_index do |elemento,index|

	chain2 << chain[index][0] = "c"

end

print chain2





