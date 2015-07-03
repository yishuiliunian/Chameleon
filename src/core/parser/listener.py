# coding: UTF-8
from ..engine.ChameleonListener import *
from ..codegen.model import OCModel
from ..codegen.property import  PropertyFactory
from ..codegen.oc.generate import OCGenerator

class CLBuildListener(ChameleonListener):
    pass
    def __init__(self):
        ChameleonListener.__init__(self)
        self.models = []
        pass

    def enterProg(self, ctx):
        print "已经识别Chameleon，开始解析"
        pass

    def exitProg(self, ctx):
        print "结束解析"

    def topModel(self):
        if len(self.models) < 1 :
           return  None
        return self.models[-1]

    def exitC_property(self,ctx):
        name = ctx.ID().getText()
        type = ctx.p_type().getText()
        p = PropertyFactory(name, type)
        assert(p)
        model = self.topModel()
        model.addProperty(p)
        print name
        print type
        print ctx;

    def enterModel(self, ctx):
        print "发现模型"
        name =  ctx.ID().getText()
        model = OCModel(name)
        self.models.append(model)
        pass

    def exitModel(self, ctx):
        model = self.topModel()
        generator = OCGenerator(model, "/Users/baidu/Works/Baidu/temp")
        generator.output()

        pass

    def exitWords(self, ctx):
        print "*******"
        print "发现注释"
        print ctx.getText()
        print "******"
        pass
