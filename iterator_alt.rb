class MyIterator
=begin
  Metodo de listado por pantalla
  @param lista Recibe un listado `Array` o `Hash` para iterarlo.
  #### Ejemplo de uso:
  ```
  MyClass.listar_por_pantalla(["a", "b", "c"])
  ```
  @return No retorna nada `Procedimiento`
=end
  def self.listar_por_pantalla(lista)
    if lista.class.to_s == "Hash"
      lista.each do |k, v|
        puts "#{k}: #{v}"
      end
    elsif lista.class.to_s == "Array"
      lista.each do |u|
        puts u
      end
    end
    nil
  end
=begin
  Metodo de exportacion de los datos,
  @param servicio `Object` recibe un **objeto** servicio con el que obtener datos
  @param ruta `String` recibe una ruta de la maquina local
  #### Ejemplo de uso
  ```ruby
  puts MyIterator.exportar_datos(Service.new(), "directorio/archivo.txt")
  ```
  @return Retorna un objeto MyService `Procedimiento`
=end
  def self.exportar_datos(servicio, ruta)
    # Fingir que aqui existe una implementacion
  end
end


a = {a: "Nombre", b: "Apellido", c: "Password"}
b = [12, 34, 45, 37, 45, 32]

puts "\nLista de hash"
MyIterator.listar_por_pantalla(a)
puts "\nLista de array"
MyIterator.listar_por_pantalla(b)

puts "\nExportación de datos"
MyIterator.exportar_datos(String.new("Hola soy un dato"), "datos.txt")
