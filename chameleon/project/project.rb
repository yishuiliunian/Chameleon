$LOAD_PATH.unshift(File.dirname(__FILE__))
require "xcodeproj"
require "tools"
require "singleton"
require "pathname"
require 'fileutils'

class OCProject
   include Singleton
   attr_accessor :path
   attr_accessor :projectFilePath
   attr_reader    :project
   attr_reader    :modelOutPath
   attr_accessor  :originFilesPath
   attr_reader    :modelFileGroup
   def  initialize
      @projectFilePath = FindPathHasFile("./", ".xcodeproj")
      assert("没找到工程文件") {@projectFilePath != nil}
      @project = Xcodeproj::Project.open(@projectFilePath)
      @path = Pathname(Pathname(@projectFilePath).dirname())
      require @path.join("ChameleonFile")
      @modelOutPath = $MODEL_PATH
      @originFilesPath = $*[0]
      target = @project.targets.first
      puts @project
      puts target
      @modelFileGroup = @project.main_group.find_subpath(@modelOutPath, true)
      puts "创建目录"
      puts @modelFileGroup

   end


   def removeFiles(files)

   end
end

$XCODE_PROJECT = OCProject.instance

def OCOutput
  puts "开始输出"
  outputPath = $XCODE_PROJECT.path.join($XCODE_PROJECT.modelOutPath)
  EnsurePathExist(outputPath)
  puts outputPath

  AllFilesInPath($XCODE_PROJECT.originFilesPath).each { |f|
      fPath = PathJoin($XCODE_PROJECT.originFilesPath, f)
      aimPath = PathJoin(outputPath, f)
      FileUtils.cp fPath, aimPath
  }
  puts "结束输出"
  $XCODE_PROJECT.project.save
end

OCOutput()
