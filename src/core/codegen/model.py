# coding: UTF-8

from property import *
import os

class OCModel:
    def __init__(self, name, secondName=None):
        self.name = name
        self.secondName = secondName
        self.properties = []

    def checkPropertyExist(self, p):
        for pItor in self.properties:
            if pItor.name == p.name:
                print("--------\n")
                print(pItor.name)
                return True
        return False

    def addProperty(self, p):
        print p
        assert(isinstance(p , Property))
        assert(self.checkPropertyExist(p) == False)
        self.properties.append(p)
