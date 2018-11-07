module Concerns::Findable

def class.find_by_name(name)
  all.detect {|o| o.name == name}
end
