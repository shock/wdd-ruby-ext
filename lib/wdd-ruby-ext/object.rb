
class Object
  @@__duping_registry = {}
  
  def deep_dup
    return @@__duping_registry[object_id] if @@__duping_registry[object_id]
    
    deep_duping_obj = dup
    deep_duping_obj.instance_variables.each do |var|
      val = deep_duping_obj.instance_variable_get(var)
      begin
        @@__duping_registry[object_id] = deep_duping_obj
        val = val.deep_dup
      rescue TypeError
        next
      ensure
        @@__duping_registry[object_id] = nil
      end
      deep_duping_obj.instance_variable_set(var, val)
    end
    deep_duping_obj
  end
end