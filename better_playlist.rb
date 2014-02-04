# I had to resort to using the solution in the back
# of the book but I do feel as though I understand
# what is happening.

def music_shuffle filenames
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling.  Let's 
  # shuffle the "deck" twice, then cut it once.  That's 
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.

  # Before we do anything, let's actually *sort* the 
  # input, since we don't know how shuffled it might 
  # already be, and we don't want it to be *too* random.
  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice.
  2.times do
    # dividing the deck in 2 to make 2 piles
    l_idx = 0   # index of next card in left pile
    r_idx = len/2   #index of next card in right pile
    shuff = []    # this is where the shuffled cards will go
    # NOTE: If we have an odd number of "cards",
    #       then the right pile will be larger.

    while shuf.length < len  # as long as there are cards left to be shuffled
      if shuf.length%2 == 0  #just a way to decide which pile to pull from
        # take card from right pile
        shuf.push(filenames[r_idx])
        # go to the next card in the right pile
        r_idx = r_idx +1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  # And cut the deck
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts music_shuffle(songs)