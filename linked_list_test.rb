require "minitest"
require "minitest/autorun"
require_relative "linked_list.rb"

class LinkedListTest < Minitest::Test

#Iterative:

  def test_it_exists_iterative
    iterative = IterativeList.new
  end

  def test_add_first_node
    iterative = IterativeList.new
    iterative1 = iterative.add_node("alpha")
    assert_equal nil, iterative1.next_node
  end

  def test_add_second_node
    iterative = IterativeList.new
    iterative1 = iterative.add_node("alpha")
    iterative2 = iterative.add_node("zeta")
    assert_equal "zeta", iterative1.next_node.node_name
  end

  def test_list
    skip
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    assert_equal 3, iterative.list
  end

  def test_count_nodes
    skip
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    assert_equal 3, iterative.counter
  end

#Recursive:

  def test_it_exists_recursive
    recursive = RecursiveList.new
  end


#Node:

  def test_it_exists_node
    node = Node.new("Delta")
  end

end
