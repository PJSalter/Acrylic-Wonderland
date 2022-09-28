require "ruby2d"
# require 'bundler/setup'
# require 'rubygems'
# Ruby2D::Window

# title for the window.
# setting the title attribute so that it will display it once it's open.
# passing it a hash with a symbol which is known as my key stating title.
# Then my value as a string which is the name of the project.
set( {:title => "Acrylic Wonderland" } )

set(background: "purple", width: 640, height: 480)

# circle class
circle = Circle.new(
  x: 40,
  y: 40,
  color: 'green',
  radius: 200
)

on :key_held do |move|
  case move.key
  when 'up'
    circle.y -= 5
  when 'down'
    circle.y += 5
  when 'left'
    circle.x -= 5
  when 'right'
    circle.x += 5
  end
end

puts 'hello world'

show
