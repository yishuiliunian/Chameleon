# coding: UTF-8
from ..model import *
from ..property import *
from mako.template import Template
from mako.lookup import TemplateLookup
import codecs
class OCGenerator:
    def __init__(self, model, outPath):
        self.model = model
        self.outPath = outPath
        self.tlLookup = TemplateLookup(directories="core/resources/template/oc")

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
