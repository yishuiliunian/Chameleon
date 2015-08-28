# coding: UTF-8
from ..model import *
from ..property import *
from mako.template import Template
from mako.lookup import TemplateLookup
from ...utilities.constant import OCOutType
import codecs
import os
class OCGenerator:
    def __init__(self, model, outPath, type=OCOutType.Dic):

        self.model = model
        self.outPath = outPath
        appPath = os.path.split(os.path.realpath(__file__))[0];
        if type == OCOutType.Dic:
            templatePath = appPath+"/../../resources/template/oc/dic"
        elif type == OCOutType.Mantle:
            templatePath = appPath+"/../../resources/template/oc/mantle"
        else:
            sys.exit("OC不支持该输出选项");

        self.type = type
        self.tlLookup = TemplateLookup(directories=templatePath)

    def renderFileContent(self, file):
        fileTl = self.tlLookup.get_template(file)
        content = fileTl.render(model=self.model)

        return content

    def outputFileWithRender(self, filename, tlname):
        filePath = os.path.join(self.outPath, filename)
        content = self.renderFileContent( tlname)
        f = codecs.open(filePath, "w+", "utf-8")
        f.write(content)
        f.close()



    def output(self):
        if os.path.exists(self.outPath) == False:
            os.mkdir(self.outPath)
        headerFile = self.model.name+ ".h"
        implatationFile = self.model.name + ".m"
        self.outputFileWithRender(headerFile, "model_header.clout")
        self.outputFileWithRender(implatationFile, "model_implatation.clout")
        if self.type == OCOutType.Dic:
            self.outputFileWithRender("EnsureType.h", "EnsureType.h")
            self.outputFileWithRender("EnsureType.m", "EnsureType.m")
            self.outputFileWithRender("BWTODictionaryProtocol.h", "BWTODictionaryProtocol.h")
            self.outputFileWithRender("NSObject+TODictionary.h", "NSObject+TODictionary.h")
            self.outputFileWithRender("NSObject+TODictionary.m", "NSObject+TODictionary.m")
    
        
