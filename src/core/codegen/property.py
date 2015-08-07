
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

class NSURLProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name, "NSURL")

class NSDataProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name, "NSData")

class NSDictionaryProperty(ObjectProperty):
    def __init__(self, name):
        ObjectProperty.__init__(self, name, "NSDictionary")

class NSArrayProperty(ObjectProperty):
    def __init__(self, name, containerType):
        ObjectProperty.__init__(self, name, "NSArray")
        self.containerType = containerType

#基本类型
class FundamentalProperty(Property):
    def __init__(self, name, type):
        Property.__init__(self, name, type)

class Int8Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int8_t")

class UInt8Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "uint8_t")

class Int16Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int16_t")

class UInt16Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "uint16_t")

class Int32Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int32_t")

class UInt32Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "uint32_t")

class Int64Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int64_t")

class UInt64Property(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "uint64_t")

class CharProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "char")

class UnsignedCharProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "unsigned char")

class ShortProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "short")

class UnsignedShortProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "unsigned short")

class IntProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "int")

class UnsignedIntProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "unsigned int")

class LongProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "long")

class UnsignedLongProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "unsigned long")

class LongLongProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "long long")

class UnsignedLongLongProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "unsigned long long")

class NSIntegerProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "NSInteger")

class NSUIntegerProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "NSUInteger")

class BoolProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self, name, "BOOL")

class DoubleProperty(FundamentalProperty):
    def __init__(self,name):
        FundamentalProperty.__init__(self, name, "double")

class FloatProperty(FundamentalProperty):
    def __init__(self, name):
        FundamentalProperty.__init__(self,name, "float")


def PropertyFactory(name, type):
    if type == ModelType.Char:
        return CharProperty(name)
    elif type == ModelType.UnsignedChar:
        return UnsignedCharProperty(name)
    elif type == ModelType.Short:
        return ShortProperty(name)
    elif type == ModelType.UnsignedShort:
        return UnsignedShort(name)
    elif type == ModelType.Int:
        return IntProperty(name)
    elif type == ModelType.UnsignedInt:
        return UnsignedInt(name)
    elif type == ModelType.Long:
        return LongProperty(name)
    elif type == ModelType.UnsignedLong:
        return UnsignedLong(name)
    elif type == ModelType.LongLong:
        return LongLongProperty(name)
    elif type == ModelType.Integer:
        return NSIntegerProperty(name)
    elif type == ModelType.UInteger:
        return NSUIntegerProperty(name)
    elif type == ModelType.Bool:
        return BoolProperty(name)
    elif type == ModelType.Int8:
        return Int8Property(name)
    elif type == ModelType.UInt8:
        return UInt8Property(name)
    elif type == ModelType.Int16:
        return Int16Property(name)
    elif type == ModelType.UInt16:
        return UInt16Property(name)
    elif type == ModelType.UInt32:
        return UInt32Property(name)
    elif type == ModelType.Int64:
        return Int64Property(name)
    elif type == ModelType.UInt64:
        return UInt64Property(name)
    elif type == ModelType.Float :
        return FloatProperty(name)
    elif type == ModelType.Double:
        return DoubleProperty(name)
    elif type == ModelType.String:
        return NSStringProperty(name)
    elif type == ModelType.URL :
        return NSURLProperty(name)
    elif type == ModelType.Number:
        return NSNumberProperty(name)
    elif type == ModelType.Data:
        return NSDataProperty(name)
    elif type == ModelType.Dictionary:
        return NSDictionaryProperty(name)
    elif type == ModelType.Array:
        return NSArrayProperty(name, type)
    else:
        return CustomObjectProperty(name, type)
    return None

def is_foundation_object_propery(type):
    if type == ModelType.String:
        return True
    elif type == ModelType.Number:
        return True
    else:
        return False