module Concerns::Findable

def class.find_by_name(name)
  self.all.detect {|o| o.name == name}
end
