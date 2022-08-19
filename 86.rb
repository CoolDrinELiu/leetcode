def partition(head, x)
  before_head = ListNode.new
  after_head = ListNode.new
  after = after_head
  before = before_head
  while !head.nil?
    temp = ListNode.new(head.val)
    if head.val < x
      before_head.next = temp
      before_head = before_head.next
    else
      after_head.next = temp
      after_head = after_head.next
    end
    head = head.next
  end
  after_head.next = nil
  before_head.next = after.next
  before.next
end

# a = ListNode.new(1)
# head = a
# a.next = ListNode.new(4)
# a = a.next
# a.next = ListNode.new(3)
# a = a.next
# a.next = ListNode.new(2)
# a = a.next
# a.next = ListNode.new(5)
# a = a.next
# a.next = ListNode.new(2)
# a = a.next

# partition  head, 3
