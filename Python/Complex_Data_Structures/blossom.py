from linked_list import Node, LinkedList

class HashMap:
  def __init__(self, size):
    self.array_size = size
    self.array = [LinkedList() for i in range(self.array_size)]


  def hash(self, key):
    hash_code = sum(key.encode()) 
    return hash_code

  def compress(hash_code):
    return hash_code % self.array_size

  def assign(self, key, value):  
    hash_code = self.hash(key)
    array_index = self.compress(hash_code)
    payload = Node([key, value])
    list_of_array = self.array[array_index]
    for i in list_of_array:
      if key == i[0]:
        i[1] = value
      else:
        list_at_array.insert(payload)  
    return self.array[array_index]

  def retrieve(self, key):
    hash_code = self.hash(key)
    array_index = self.compress(hash_code)
    list_at_index = self.array[LinkedList(array_index)]
    #payload = self.array[array_index]
    for item in list_at_index:
      if item[0] == key:
        return item[1]
      else:
        return None  

    if payload is not None and payload[0] == key:
        return payload[1]
    else: 
      return None
        

