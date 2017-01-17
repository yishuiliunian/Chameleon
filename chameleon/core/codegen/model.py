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
        assert(isinstance(p , Property))
        assert(self.checkPropertyExist(p) == False)
        if (self.comment != None):
            p.comment = self.comment
            print("property comment ", p.comment)
            self.comment = None
            pass
        self.properties.append(p)

    def hasContainerClass(self):
        for p in self.properties:
            if isinstance(p, NSArrayProperty):
                return True
                pass
            pass
        pass
        return False
    def cacheComment(self, comment):
        self.comment = comment
        pass