module Findable
  def find_by_name
    self.class.all.select {|obj| obj.name = self.name}
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
