# coding: UTF-8

from property import *
import os

class OCModel:
    def __init__(self, name):
        self.name = name
        self.properties = []

    def checkPropertyExist(self, p):
        for pItor in self.properties:
            if pItor.name == p.name:
                return True
        return False

    def addProperty(self, p):
        print p
        assert(isinstance(p , Property))
        assert(self.checkPropertyExist(p) == False)
        self.properties.append(p)
