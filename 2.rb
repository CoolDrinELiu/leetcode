def add_two_numbers(l1, l2)
  result_arr = []
  carry = 0
  while l1 || l2 || carry > 0
    sum = (l1&.val||0) + (l2&.val||0) + carry
    if sum >= 10
      carry = 1
      result_arr.push sum % 10
    else
      carry = 0
      result_arr.push sum
    end
    l1 = l1.next if l1
    l2 = l2.next if l2
  end
  
  l3_head = ListNode.new(result_arr[0])
  l3 = l3_head
  result_arr[1..-1].each do |num|
    l3.next = ListNode.new(num)
    l3 = l3.next
  end
  l3_head
end