# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create(
    title: 'programming rubby',
    description: "Ruby the best exciting language",
    image_url: "ruby.jpg",
    price: 50.34
    )
    
    
Product.create(
    title: 'programming python',
    description: "python is also one of the best language",
    image_url: "python.jpg",
    price: 33.34
    )
    
    
Product.create(
    title: 'programming javascript',
    description: "JS is the best exciting frontend language",
    image_url: "JS.jpg",
    price: 20.34
    )
    
    
Product.create(
    title: 'programming css',
    description: "CSS is also one of the best frontend language",
    image_url: "css.jpg",
    price: 10.34
    )
    
    
Product.create(
    title: 'programming html',
    description: "html is the best exciting markup language",
    image_url: "html.jpg",
    price: 15.34
    )
    
    
Product.create(
    title: 'programming rails',
    description: "rails is also one of the best web framework language",
    image_url: "rails.jpg",
    price: 30.34
    )
    