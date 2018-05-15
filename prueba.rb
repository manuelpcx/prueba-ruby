puts "1.- Generar archivo de los Alumnos"
puts "2.- Contar la cantidad de inasistencias"
puts "3.- Alumnos aprobados"
puts "4.- Salir"
puts 'Ingrese una opción'
opcion = gets.chomp.to_i



while opcion != 4
  case opcion
  when 1
    def alumnos(name, nota1, nota2, nota3, nota4, nota5)
      prom = Hash.new
      prom[name]=[nota1, nota2, nota3, nota4, nota5]
      prom.each do |key, val|
        nota= Array.new
        nombres= Array.new
        nombres.push(key)
        nota.push(val)
        puts nombres
        print nota
      end
    end


    file = File.open('Alumnos.csv', 'r')
    notas = file.readlines.map(&:chomp)
    file.close

    notas.each do |x|
      promedio = Array.new
      promedio << x.split(", ")
      promedio.map do |slice|
        alumnos(*slice)
      end
    end


  when 2
    def inasistencias(name, nota1, nota2, nota3, nota4, nota5)
      inas = Hash.new
      inas[name]=[nota1, nota2, nota3, nota4, nota5]
      inas.each do |key, val|
      puts val.count("A")
      end
    end
    file = File.open('Alumnos.csv', 'r')
    data = file.readlines.map(&:chomp)
    file.close

    data.each do |x|
      ina = Array.new
      ina << x.split(", ")
      ina.map do |slice|
        inasistencias(*slice)
      end
    end

  when 3
    def aprobados(name)
      file = File.open(name, 'r')
      data = file.readlines
      file.close

    end

    aprobados('Alumnos.csv')


  when 4
  end
  puts "1.- Generar archivo de los Alumnos"
  puts "2.- Contar la cantidad de inasistencias"
  puts "3.- Alumnos aprobados"
  puts "4.- Salir"
  puts 'Ingrese una opción'
  opcion = gets.chomp.to_i
  end
