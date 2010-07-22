class Hash
  def deep_dup  
    deep_duping_obj = super
    deep_duping_obj.each {|key,value| deep_duping_obj[key] = value.deep_dup}
    deep_duping_obj
  end
end