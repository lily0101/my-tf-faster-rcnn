from __future__ import absolute_import
from __future__ import division
from __future__ import print_function


class Person(object):
    def __init__(self):
        self.name = "name"
    def print_title(self):
        if self.sex == "male":
            print("man")
        elif self.sex == "female":
            print("woman")


class Child(Person):
    def __init__(self):
        Person.__init__(self)
        self.sex = "male"
    def print_title(self):
        if self.sex == "male":
            print("boy")
        elif self.sex == "female":
            print("girl")

if __name__ == "__main__":
    May = Child()
    Peter = Person()

    May.print_title()
    Peter.print_title()
