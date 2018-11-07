module Concerns::Findable

def find_by_name(name)
  all.detect {|o| o.name == name}
end

def find_or_create_by_name(name)
  all.detect {|o| o.name == name} || name = self.new(name)
end

end
