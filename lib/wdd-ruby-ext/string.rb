
class String
  # Finds the longest commong substring betweent the two supplied strings
  def self.lcs(s1, s2)
    num=Array.new(s1.size){Array.new(s2.size)}
    len,ans=0

    longest_substr = ""
    substr = ""
    s1.scan(/./).each_with_index do |l1,i |
      s2.scan(/./).each_with_index do |l2,j |

        unless l1==l2
          num[i][j]=[0,""]
        else
          if (i==0 || j==0)
            num[i][j]=[1,l1] 
          else
            num[i][j] = [1 + num[i-1][j-1][0], num[i-1][j-1][1] +l1]
          end
          if num[i][j][0] > len
            len = ans = num[i][j][0] 
            longest_substr = num[i][j][1]
          end
        end
      end
    end
    longest_substr
  end
  
  # Performs multiple gsub operations in a single pass.
  # +key_value_pairs+ is an array of [key,value] pairs where each key is a regular expression 
  # and the value is the value to substitute when that regexp is matched.
  def mgsub(key_value_pairs=[].freeze)
    regexp_fragments = key_value_pairs.collect { |k,v| k }
    gsub(Regexp.union(*regexp_fragments)) do |match|
      key_value_pairs.detect{|k,v| k =~ match}[1]
    end
  end
  
  # Performs multiple gsub operations in a single pass.
  # +key_value_pairs+ is an array of [key,value] pairs where each key is a regular expression 
  # and the value is the value to substitute when that regexp is matched.
  #
  # Unlike mgsub, this method allows the match string from the regexp to be embedded in the replace
  # string.  If the replace string contains the characters '$1', they will be replaced with the
  # match and the result will be used to replace the match in the original string.
  #
  # eg.
  #
  # >> "this is that".mgpsub( [ [/that/, 'really $1!'], [/this/, 'that'] ] ) 
  # => that is really that!"
  #
  def mgpsub(key_value_pairs=[].freeze)
    regexp_fragments = key_value_pairs.collect { |k,v| k }
    gsub(Regexp.union(*regexp_fragments)) do |match|
      replacement_term = key_value_pairs.detect{|k,v| k=~match}[1]
      replacement_term.gsub(/\$1/, match)
    end
  end
  
end
