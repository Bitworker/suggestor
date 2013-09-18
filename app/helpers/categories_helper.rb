module CategoriesHelper
  def answer_link answer
    question_id   = answer.redirect_ids[rand(answer.redirect_ids.count) - 1]
    
    link_to answer.text, root_path(:question_id => question_id, :answer_id => answer.id), :class => "button secondary small expand"
  end
  
  def get_rand_keyword_link_src result 
    'http://www.google.de'
  end
  
  def get_rand_keyword_img_src result
    'http://polpix.sueddeutsche.com/bild/1.1406949.1355282590/560x315/berlin-staedtetipps-szkorrespondenten.jpg'
  end
  
  def get_rand_keyword_text result
    if [true, false].sample
      'abc defghij kl mno pqrst vwxyz... !!! abc defghij kl mno pqrst vwxyz... !!! abc defghij kl mno pqrst vwxyz... !!! abc defghij kl mno pqrst vwxyz... !!! abc defghij kl mno pqrst vwxyz... !!!'
    else
      'This site fucking owns bro, with the might of seo keywords!! Thridparty tools inc!! This site fucking owns bro, with the might of seo keywords!! Thridparty tools inc!! This site fucking owns bro, with the might of seo keywords!! Thridparty tools inc!! This site fucking owns bro, with the might of seo keywords!! Thridparty tools inc!! This site fucking owns bro, with the might of seo keywords!! Thridparty tools inc!!'
    end
  end
end
