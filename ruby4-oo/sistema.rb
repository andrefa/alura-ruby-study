require_relative 'livro'
require_relative 'revista'
require_relative 'ebook'
require_relative 'estoque'

ruby = Livro.new("Programming Ruby", 100, 2004, true, "editora", "livro")
revistona = Revista.new("Revista de Ruby", 10, 2012, true, "Revistas", "revista")
ebookinho = EBook.new("ebook", 10, 2012, "revista")

estoque = Estoque.new
estoque << ruby << revistona << ebookinho
estoque.vende revistona
estoque.vende ruby
estoque.vende ebookinho

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo

puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)