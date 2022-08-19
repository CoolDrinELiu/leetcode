# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
    return nil if head == nil
    return head if head.next == nil
    odd = head
    start = head
    even = head.next
    evenFirst = even
    while even != nil && even.next != nil
      odd.next = odd.next.next
      odd = odd.next

      even.next = even.next.next
      even = even.next
    end
    odd.next = evenFirst
    start
end

# Input: head = [2,1,3,5,6,4,7]
# Output: [2,3,6,7,1,5,4]


# Input: head = [1,2,3,4,5]
# Output: [1,3,5,2,4]