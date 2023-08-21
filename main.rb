require_relative 'node'
require_relative 'linked_list'

node = Node.new(1)

list = Linked_List.new(node)

for i in 2 .. 5
  list.append(i)
end

list.to_s





