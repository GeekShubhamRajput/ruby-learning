## Hash merge Method

merge(*other_hashes) → new_hash
merge(*other_hashes) { |key, old_value, new_value| ... } → new_hash

h = {foo: 0, bar: 1, baz: 2}
h1 = {bat: 3, bar: 4}
h2 = {bam: 5, bat:6}
h.merge(h1, h2) # => {foo: 0, bar: 4, baz: 2, bat: 6, bam: 5}

h1 = {bat: 3, bar: 4}
h2 = {bam: 5, bat:6}
h1.merge(h2) { |key, old_value, new_value| old_value + new_value }
# => {:bat=>9, :bar=>4, :bam=>5}

# Hash merge! Method

Aliased as update

merge!(*other_hashes) → self
merge!(*other_hashes) { |key, old_value, new_value| ... } → self

update(*other_hashes) → self
update(*other_hashes) { |key, old_value, new_value| ... } → self

h0 = {foo: 0, bar: 1, baz: 2}
h1 = {bar: 3, foo: -1}
h0.update(h1) # => {foo: -1, bar: 3, baz: 2}

h = {foo: 0, bar: 1, baz: 2}
h.update({bam: 3, bah: 4}) # => {foo: 0, bar: 1, baz: 2, bam: 3, bah: 4}

season = {AB: 75, H: 20, HR: 3, SO: 17, W: 11, HBP: 3}
today = {AB: 3, H: 1, W: 1}
yesterday = {AB: 4, H: 2, HR: 1}
season.update(yesterday, today) {|key, old_value, new_value| old_value + new_value }
# => {AB: 82, H: 23, HR: 4, SO: 17, W: 12, HBP: 3}

h = {foo: 0, bar: 1, baz: 2}
h.update({bat: 3}) { fail 'Cannot happen' }
# => {foo: 0, bar: 1, baz: 2, bat: 3}
