class String
  def palindrome?
    return false if self.empty?
    test_string = self.downcase.gsub(/[^[:alnum:]]/, '')
    test_string == test_string.reverse
  end
end