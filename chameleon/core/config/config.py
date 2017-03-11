# coding: UTF-8
import os
from ..utilities.constant import *
#全局配置变量

class Config(object) :
    OUTPUT_DIR = os.getcwd()
    OC_TYPE = 'mantle'
    TEMPLATE = None
    def __new__(cls,*args,**kwargs):
        if not hasattr(cls,'_inst'):
            cls._inst=super(Singleton,cls).__new__(cls,*args,**kwargs)
        return cls._inst
    @classmethod
    def setupWithArgs(cls,args):
        od = args.outDir
        if od == None:
            cls.OUTPUT_DIR = os.getcwd()
        else:
            cls.OUTPUT_DIR =  os.path.expanduser(od)
            pass
        cls.TEMPLATE = args.template
        #oc output type
        if cls.TEMPLATE == None:
            type = args.outType
            if type == None:
                type = OCOutType.BWModel
            elif type == OCOutType.Mantle:
                type = OCOutType.Mantle
            elif type == OCOutType.BWModel:
                type = OCOutType.BWModel
            elif type == OCOutType.Dic:
                type = OCOutType.Dic
            else:
                print("不支持该类型的输出")
            cls.OC_TYPE = type
        pass

    pass
