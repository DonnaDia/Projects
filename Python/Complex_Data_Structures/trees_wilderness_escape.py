######
# TREENODE CLASS
######
class TreeNode:
  def __init__(self, story_piece):
    self.story_piece = story_piece
    self.choices = []

  def add_child(self, node):
    self.choices.append(node)  

  def traverse(self):
    story_node = self
    print(story_node.story_piece)
    while story_node.choices != []:
      choice = input("Enter 1 or 2 to continue the story: ")
      if choice != "1" or "2":
        print("Please choose 1 or 2")
        chosen_index = int(choice)
        chosen_index -= 1
        chosen_child = story_node.choices[chosen_index]
        print(chosen_child.story_piece)
        story_node = chosen_child
######
# VARIABLES FOR TREE
######
story_root = TreeNode("""
You are in a forest clearing. There is a path to the left.
A bear emerges from the trees and roars!
Do you: 
1 ) Roar back!
2 ) Run to the left...
""")

choice_a = TreeNode("""
The bear is startled and runs away.
Do you:
1 ) Shout 'Sorry bear!'
2 ) Yell 'Hooray!'
""")

choice_b = ("""
You come across a clearing full of flowers. 
The bear follows you and asks 'what gives?'
Do you:
1 ) Gasp 'A talking bear!'
2 ) Explain that the bear scared you.
""")

user_choice = input("What is your name? ")
print(user_choice)

story_root.add_child(choice_a)
story_root.add_child(choice_b)
######
# TESTING AREA
######
story_root.traverse()






