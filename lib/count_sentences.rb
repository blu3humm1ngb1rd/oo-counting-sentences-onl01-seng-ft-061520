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
       sentence_split.each do |counter|
         (counter.count < 2).delete 
       end 
       return sentence_split.count 
     #else 
       #return 0 
     #end 
  end
end