def reverse_list(head)
  pre = nil
  cur = head
  while cur
    temp = cur.next
    cur.next = pre
    pre = cur
    cur = temp
  end
  pre
end