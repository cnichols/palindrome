require File.expand_path("../../lib/palindrome", __FILE__)
require 'minitest/autorun'

# Test strings brought to you by Weird Al Yankovic's "Bob"
#   http://www.youtube.com/watch?v=Nej4xJe4Tdg

describe "String with pamindrome support" do
  it "should be a String class" do
    string = String.new
    string.must_be_kind_of String
  end
  it "should respond to palindrome?" do
    string = String.new
    string.must_respond_to('palindrome?')
  end
  it "should handle blank Strings" do
    ''.palindrome?.must_equal false
  end
  it "should handle new Strings" do
    test_string = String.new
    test_string.palindrome?.must_equal false
  end
  it "shound not identify a non-palindrome as a palindrome" do
    "This is not a palindrome".palindrome?.must_equal false
    "Nore is this".palindrome?.must_equal false
  end
  it "should validate a single word palindrome" do
    "hannah".palindrome?.must_equal true
  end
  it "should ignore case" do
    "HaNnah".palindrome?.must_equal true
  end
  it "should ignore spaces" do
    "I man am regal a german am I".palindrome?.must_equal true
  end
  it "should ignore dashes" do
    "if I had a hi-fi".palindrome?.must_equal true
  end
  it "should ignore apostrophes" do
    "madam I'm adam".palindrome?.must_equal true
  end
  it "should ignore non-letters" do
    "Do nine men interpret? 'Nine men' I nod.".palindrome?.must_equal true
  end
  it "should ignore double quotes" do
    'No "X" in Nixon'.palindrome?.must_equal true
  end
  it "should ignore bangs and periods" do
    "God! A red nugget! A fat egg under a dog.".palindrome?.must_equal true
  end
  it "should test a palindrome with the words salami and lasagna" do
    "Go hang a salami, I'm a lasagna hog.".palindrome?.must_equal true
  end
  it "should allow numbers" do
    "123454321".palindrome?.must_equal true
  end
end