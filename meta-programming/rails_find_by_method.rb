## RailsFindByMethod

# Post.find_by_name('Spartacus')

def find_by(arg, *args)
  where(arg, *args).take
end
