class Participant < ActiveRecord::Base
  attr_accessible :date, :time, :sres1, :sres2, :sres3, :sres4, :sres5, :sres6, :sres_final, :comment, :id
  
  #validates :date, :presence => true
  #validates :time, :presence => true
  #validates :res1, :presence => true
  
end