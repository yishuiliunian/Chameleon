
# coding: UTF-8
from ..utilities.constant import ModelType
class Property:
    comment = None
    def __init__(self, name, type, secondName=None):
        self.name = name
        self.type = type
        self.secondName = secondName
    def mapKey(self):
        if self.secondName != None:
            return self.secondName
        return self.name
        pass

#Object类型
class ObjectProperty(Property):
    pass

class CustomObjectProperty(ObjectProperty):
    pass


class NSStringProperty(ObjectProperty):
    def __init__(self, name, secondName):
        ObjectProperty.__init__(self, name, "NSString", secondName)

class NSNumberProperty(ObjectProperty):
    def __init__(self, name, secondName):
        ObjectProperty.__init__(self, name,  "NSNumber", secondName)

class NSURLProperty(ObjectProperty):
    def __init__(self, name, secondName):
        ObjectProperty.__init__(self, name, "NSURL", secondName)

class NSDataProperty(ObjectProperty):
    def __init__(self, name, secondName):
        ObjectProperty.__init__(self, name, "NSData", secondName)

class NSDictionaryProperty(ObjectProperty):
    def __init__(self, name, secondName):
        ObjectProperty.__init__(self, name, "NSDictionary", secondName)

class NSArrayProperty(ObjectProperty):
    def __init__(self, name, containerType, secondName=None):
        ObjectProperty.__init__(self, name, "NSArray", secondName)
        self.containerType = containerType

#基本类型
class FundamentalProperty(Property):
    def __init__(self, name, type, secondName):
        Property.__init__(self, name, type, secondName)

class Int8Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "int8_t", secondName)

class UInt8Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "uint8_t", secondName)

class Int16Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "int16_t", secondName)

class UInt16Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "uint16_t", secondName)

class Int32Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "int32_t", secondName)

class UInt32Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "uint32_t", secondName)

class Int64Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "int64_t", secondName)

class UInt64Property(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "uint64_t", secondName)

class CharProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "char", secondName)

class UnsignedCharProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "unsigned char", secondName)

class ShortProperty(FundamentalProperty):
    def __init__(self,name, secondName):
        FundamentalProperty.__init__(self, name, "short", secondName)

class UnsignedShortProperty(FundamentalProperty):
    def __init__(self,name, secondName):
        FundamentalProperty.__init__(self, name, "unsigned short", secondName)

class IntProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "int", secondName)

class UnsignedIntProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "unsigned int", secondName)

class LongProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "long", secondName)

class UnsignedLongProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "unsigned long", secondName)

class LongLongProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "long long", secondName)

class UnsignedLongLongProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "unsigned long long", secondName)

class NSIntegerProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "NSInteger", secondName)

class NSUIntegerProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "NSUInteger", secondName)

class BoolProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "BOOL", secondName)

class DoubleProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self, name, "double", secondName)

class FloatProperty(FundamentalProperty):
    def __init__(self, name, secondName):
        FundamentalProperty.__init__(self,name, "float", secondName)


def PropertyFactory(name, type, secondName=None):
    if type == ModelType.Char:
        return CharProperty(name, secondName)
    elif type == ModelType.UnsignedChar:
        return UnsignedCharProperty(name, secondName)
    elif type == ModelType.Short:
        return ShortProperty(name, secondName)
    elif type == ModelType.UnsignedShort:
        return UnsignedShortProperty(name, secondName)
    elif type == ModelType.Int:
        return IntProperty(name, secondName)
    elif type == ModelType.UnsignedInt:
        return UnsignedIntProperty(name, secondName)
    elif type == ModelType.Long:
        return LongProperty(name, secondName)
    elif type == ModelType.UnsignedLong:
        return UnsignedLongProperty(name, secondName)
    elif type == ModelType.LongLong:
        return LongLongProperty(name, secondName)
    elif type == ModelType.UnsignedLongLong:
        return UnsignedLongLongProperty(name, secondName)
    elif type == ModelType.Integer:
        return NSIntegerProperty(name, secondName)
    elif type == ModelType.UInteger:
        return NSUIntegerProperty(name, secondName)
    elif type == ModelType.Bool:
        return BoolProperty(name, secondName)
    elif type == ModelType.Int8:
        return Int8Property(name, secondName)
    elif type == ModelType.UInt8:
        return UInt8Property(name, secondName)
    elif type == ModelType.Int16:
        return Int16Property(name, secondName)
    elif type == ModelType.UInt16:
        return UInt16Property(name, secondName)
    elif type ==ModelType.Int32:
        return Int32Property(name, secondName)
    elif type == ModelType.UInt32:
        return UInt32Property(name, secondName)
    elif type == ModelType.Int64:
        return Int64Property(name, secondName)
    elif type == ModelType.UInt64:
        return UInt64Property(name, secondName)
    elif type == ModelType.Float :
        return FloatProperty(name, secondName)
    elif type == ModelType.Double:
        return DoubleProperty(name, secondName)
    elif type == ModelType.String:
        return NSStringProperty(name, secondName)
    elif type == ModelType.URL :
        return NSURLProperty(name, secondName)
    elif type == ModelType.Number:
        return NSNumberProperty(name, secondName)
    elif type == ModelType.Data:
        return NSDataProperty(name, secondName)
    elif type == ModelType.Dictionary:
        return NSDictionaryProperty(name, secondName)
    elif type == ModelType.Array:
        return NSArrayProperty(name, type, secondName)
    else:
        return CustomObjectProperty(name, type, secondName)
    return None

def is_foundation_object_propery(type):
    if type == ModelType.String:
        return True
    elif type == ModelType.Number:
        return True
    else:
        return False

def is_oc_object_propery(type):
    if type == ModelType.String:
        return True
    elif type == ModelType.Number:
        return True
    elif type == ModelType.Data:
        return True
    elif type == ModelType.URL:
        return True
    else:
        return False
