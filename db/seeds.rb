# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email:"cerenchun@miaundes.cl", password:123123,first_name:"cristobal", last_name:"erenchun")
Product.create(brand:"matel1", model:"h234", variant:"verde", price:153839, shortde:"descripcion corta", longde:"descripion larga" , dtype:"trthhr")
Product.create(brand:"matel2", model:"h234" ,variant:"rojo", price:153839, shortde:"descripcion corta", longde:"descripion larga", dtype:"trthhr")
Product.create(brand:"matel3", model:"h23dvd4", variant:"rojo", price:153839, shortde:"descripcion corta", longde:"descripion larga", dtype:"trthhr")
Order.create(user_id:1)
Order.create(user_id:1)
Order.create(user_id:1)
OrderProduct.create(product_id:1,order_id:1 )
OrderProduct.create(product_id:2,order_id:2 )
OrderProduct.create(product_id:3,order_id:3 )