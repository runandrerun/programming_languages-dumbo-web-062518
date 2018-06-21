def reformat_languages(language_hash)
  new_hash = {}
  language_hash.each do |language_cat, languages|
    languages.each do |language, attributes|
      attributes.each do |attribute, att_value|
        if language == :javascript
          new_hash[language] = {
            :type => att_value,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
             :type => att_value,
             :style => [language_cat]
          }
        end
      end
    end
  end
  return new_hash
 end	 