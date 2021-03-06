
class MusicImporter

    attr_accessor :path
    
    def initialize(path)
        @path = path 
    end

    def files
        Dir.entries(@path).select {|x| x.include?(".mp3")}
    end

    def import 
        self.files.each {|y| Song.create_from_filename(y)}
    end
  
end