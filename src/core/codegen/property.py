
# coding: UTF-8
from ..utilities.constant import ModelType
class Property:
    def __init__(self, name, type):
        self.name = name
        self.type = type

#Object类型
class ObjectProperty(Property):
    pass

class CustomObjectProperty(ObjectProperty):
    pass


class NSStringProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name, "NSString")

class NSNumberProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name,  "NSNumber")

class URLProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name, "NSURL")
        pass
    pass


#基本类型
class FundamentalProperty(Property):
    def __init__(self, name, type):
        Property.__init__(self, name, type)


class IntProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int")


class Int64Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int64_t")


class Int32Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int32_t")


class BoolProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "BOOL")

class DoubleProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "double")
        pass
    pass

class FloatProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self,name, "float")
        pass
    pass


def PropertyFactory(name, type):
    if type == ModelType.Int:
        return IntProperty(name)
    elif type == ModelType.String:
        return NSStringProperty(name)
    elif type == ModelType.Int32:
        return Int32Property(name)
    elif type == ModelType.Int64:
        return Int64Property(name)
    elif type == ModelType.Double:
        return DoubleProperty(name)
    elif type == ModelType.Float :
        return FloatProperty(name)
    elif type == ModelType.URL :
        return URLProperty(name)
    elif type == ModelType.Number:
        return NSNumberProperty(name)
    else:
        return CustomObjectProperty(name, type)
    return None
