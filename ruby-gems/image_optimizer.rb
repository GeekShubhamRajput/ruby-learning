## RubyImageOptimizerGem

# This gem allows you to simply optimize images via jpegoptim or OptiPNG.

require 'image_optimizer'

image_opt = ImageOptimizer.new('file_path', quality: 80).optimize
