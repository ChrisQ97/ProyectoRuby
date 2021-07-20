require '.\src\task.rb'
require '.\src\archive.rb'
class Manager
    $manager = []
    def initialize
        @task = Task.new
        @archive = Archive.new

    end

    def initialize_file
        if (!@archive.file_exist?('.\dist\tasks.txt'))
            $manager = ''
            @archive.create_file_task
        else
            $manager = @archive.read_file_task
        end
    end

    def create_task 
        system 'clear'
        puts "Nombre de la tarea: "
        _name = gets.chomp
        @task.create(_name,0)
        @archive.write_file_task
        gets
    end

    def get_tasks
        system 'clear'
        puts @task.show
        gets
    end

    def menu
        op = 0
        while (op != 10)
            system 'clear'
            puts "1. Crear Tarea.\n 2. Listar Todas las tareas. \n 3. Buscar Tarea por Nombre.\n 4. Editar Tarea. \n 5. Marcar como en proceso. \n 6. Marcar como terminada. \n 7. Ver todas las tareas creadas. \n 8. Ver todas las tareas en proceso. \n 9. Ver todas las tareas finalizadas. \n 10. Salir "
            op = gets.to_i
            case op
            when 1
                
                create_task
            when 2
                
                get_tasks
            end

        end
    end


end
