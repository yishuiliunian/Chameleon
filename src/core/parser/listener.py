# coding: UTF-8
from ..engine.ChameleonListener import *
from ..codegen.model import OCModel
from ..codegen.property import  PropertyFactory
from ..codegen.property import NSArrayProperty
from ..codegen.oc.generate import OCGenerator
from ..config.config import *
class CLBuildListener(ChameleonListener):
    pass
    def __init__(self):
        ChameleonListener.__init__(self)
        self.models = []
        pass

    def enterProg(self, ctx):
        pass

    def exitProg(self, ctx):
        pass

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
        pass

    def exitArray_property(self, ctx):
        name = ctx.ID().getText()
        type = ctx.p_type().getText()
        p = NSArrayProperty(name, type)
        assert(p)
        model = self.topModel()
        model.addProperty(p)
        pass


    def enterModel(self, ctx):
        name =  ctx.ID().getText()
        model = OCModel(name)
        self.models.append(model)
        pass

    def exitModel(self, ctx):
        model = self.topModel()
        generator = OCGenerator(model, Config.OUTPUT_DIR, Config.OC_TYPE)
        generator.output()

        pass

    def exitWords(self, ctx):
        print "*******"
        print "发现注释"
        print ctx.getText()
        print "******"
        pass
