require "pry"

def reformat_languages(language_hash)
  new_hash = {}  # Create a new hash to store data
  language_hash.each do |language_cat, languages| # Start iteration process over level 1
    languages.each do |language, attributes| # continue iteration to level 2
      attributes.each do |attribute, att_value| # iterate on level 3 to attributes
        # if the language (key of level 2) has a key of :javascript create new hash
        if language == :javascript 
          new_hash[language] = {
            :type => att_value,
            :style => [:oo, :functional]
          }
        # else create a new hash for any language 
        else
          new_hash[language] = {
             :type => att_value,
             :style => [language_cat]
          }
        end
      end
    end
  end
  # return the new_hash
  return new_hash
 end	 