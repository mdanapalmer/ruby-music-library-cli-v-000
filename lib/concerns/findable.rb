module Concerns::Findable

def class.find_by_name(name)
  class.all.detect {|o| o.name == name}
end
