require 'pry'

class String

  def sentence?
    #returns true : boolean 
    #if ends in a . [last], #end_with?(".")
    #use self keyword 
    self.end_with?(".")
    
    ##for fun try : turning string to array, index last item, 
    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # if end with ". || ? || ! " = end of sentence - split here 
    #if self.end_with?("."||"?"||"!")
       sentence_split = self.split("."||"?"||"!")
       #this will (.split) return an array ; 
       #we want to delete array item if less than 2 
       #"Hey. I like soup!! Just kidding!?!" >> ["Hey", "I like soup!", "!", "Just kidding!", "?", "!"]
       sentence_split.delete_if do |counter|
          counter.count < 2 
       end 
       return sentence_split.count 
     #else 
       #return 0 
     #end 
  end
end