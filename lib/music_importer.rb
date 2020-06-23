class MusicImporter
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
<<<<<<< HEAD
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    # Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
=======
  def files 
    Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
>>>>>>> 278f79fdec8003babf0f88422c959019ce30c1b6
  end
  
  def import 
    files.each { |file| Song.create_from_filename(file)} 
  end
end