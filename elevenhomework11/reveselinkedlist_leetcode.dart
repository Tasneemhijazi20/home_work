/*Given the head of a singly linked list, reverse the list,
 and return the reversed list. 
 ex1: Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
ex2:Input: head = [1,2]
Output: [2,1]
Example 3:
Input: head = []
Output: []*/
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
  @override
  String toString() {
    if (next == null) {
      return '$val';
    }
    return '$val -> ${next.toString()}';
  }
}

ListNode? reverseList(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }
  ListNode? previousNode = null;
  ListNode? currentNode = head;
  while (currentNode != null) {
    ListNode? nextNode = currentNode.next;
    currentNode.next = previousNode;
    previousNode = currentNode;
    currentNode = nextNode;
  }
  return previousNode;
}

void main() {
  ListNode head = ListNode(
    1,
    ListNode(2, ListNode(3, ListNode(4, ListNode(5)))),
  );
  print(head);
  print(reverseList(head));
}
