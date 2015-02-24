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
    assert_equal "zeta", iterative1.next_node.data
  end

  def test_list_head
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    assert_equal "alpha", iterative.list_head.data
  end

  def test_tail
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    assert_equal "gamma", iterative.tail.data
    assert_equal nil, iterative.tail.next_node
  end

  def test_pop_tail
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    iterative.add_node("delta")

    iterative.pop
    assert_equal "gamma", iterative.tail.data
    assert_equal nil, iterative.tail.next_node
  end

  def test_count_nodes
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    iterative.add_node("delta")
    assert_equal 4, iterative.counter
  end

  def test_position
    iterative = IterativeList.new
    iterative.add_node("alpha")
    iterative.add_node("zeta")
    iterative.add_node("gamma")
    iterative.add_node("delta")
    assert_equal "gamma", iterative.position(2)
    assert_equal "delta", iterative.position(3)
    assert_equal "alpha", iterative.position(0)
  end


#Node:

  def test_it_exists_node
    node = Node.new("Delta")
  end


#Recursive:

  def test_it_exists_recursive
    recursive = RecursiveList.new
  end

  def test_nodes_have_data
    list = RecursiveList.new
    list.push("pizza")
    assert_equal "pizza", list.head.data
    assert_equal 1, list.count
  end

  def test_starts_with_zero_elements
    list = RecursiveList.new
    assert_equal 0, list.count
  end

  def test_it_pushes_single_element
    list = RecursiveList.new
    list.push("pizza")
    assert_equal "pizza", list.head.data
    assert_equal 1, list.count
  end

  def test_it_pushes_multiple_elements
    list = RecursiveList.new
    list.push("pizza")
    assert_equal "pizza", list.head.data
    list.push("world")
    assert_equal "world", list.head.next_node.data
    list.push("today")
    assert_equal "today", list.head.next_node.next_node.data
    assert_equal 3, list.count
  end

  def test_count
    list = RecursiveList.new
    list.push("pizza")
    assert_equal 1, list.count
    list.push("sandwich")
    assert_equal 2, list.count
  end

  def test_find_tail
    list = RecursiveList.new
    list.push("pizza")
    assert_equal true, list.find_tail("pizza")
    list.push("sandwich")
    assert_equal false, list.find_tail("pizza")
  end

  def test_it_finds_value_at_position
    list = RecursiveList.new
    list.push("pizza")
    list.push("blah")
    list.push("yata")
    list.push("ughhh")

    assert_equal "pizza", list.position(0)
    assert_equal "yata", list.position(2)
    assert_equal "ughhh", list.position(3)
  end

  def test_pop
    list = RecursiveList.new
    list.push("pizza")
    list.push("blah")
    list.push("yata")
    list.push("ughhh")

    list.pop
    assert_equal 3, list.count
    assert_equal "blah", list.position(1)

    list.pop
    assert_equal 2, list.count
    assert_equal "blah", list.position(1)
  end

end
