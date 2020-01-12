module Findable
  def find_by_name(name)
    self.all.select {|obj| obj.name = name}
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
