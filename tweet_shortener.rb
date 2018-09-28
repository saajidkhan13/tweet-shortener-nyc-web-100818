# Write your code here.
def word_substituter(string)
  dictionary = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  string.split(" ").map{ |w| dictionary.key?(w.downcase.to_sym)? dictionary[w.downcase.to_sym] : w}.join(" ") 
end 

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |tweet|
    x = word_substituter(tweet) 
    puts x 
  end 
end 
