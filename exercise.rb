class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    # TODO: Implement this method
    words = str.split(' ')
    # puts words
    words.each_with_index do |word, i|
      if word.length > 4
        if word == word.capitalize
          if word.include?('?')
            words[i] = 'Marklar?'
          elsif word.include?('.')
            words[i] = 'Marklar.'
          elsif word.include?(',')
            words[i] = 'Marklar,'
          else
            words[i] = 'Marklar'
          # puts words[i]
          end
        else
          if word.include?('?')
            words[i] = 'marklar?'
          elsif word.include?('.')
            words[i] = 'marklar.'
          elsif word.include?(',')
            words[i] = 'marklar,'
          else
            words[i] = 'marklar'
          # puts words[i]
          end
        end
      end
    end
    words.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    curr = 1
    prev = 1
    count = 3
    while count <= nth
      fib = prev + curr
      prev = curr
      curr = fib
      if fib % 2 == 0
        sum += fib
      end
      count += 1
    end
    sum
  end

end
