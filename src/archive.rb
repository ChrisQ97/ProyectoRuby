class Archive
    def initialize
        @user_info = Array.new
    end
    def write_file (username,password)
        File.open('.\dist\user.txt',"w") do |f|
            f.puts username
            f.puts password
        end
    end
    def read_file
        File.open('.\dist\user.txt',"r") do |f|
            while line = f.gets
                @user_info.append(line)
            end
        end   
        @user_info    
    end
    def file_exist? (ruta)
        File.file?(ruta)
    end
end