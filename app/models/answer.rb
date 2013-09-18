class Answer < ActiveRecord::Base
  belongs_to :question
  
  serialize :redirect_ids
end
