class Array
  def deep_dup  
    deep_duping_obj = super
    deep_duping_obj.map {|value| value.deep_dup}
  end
end