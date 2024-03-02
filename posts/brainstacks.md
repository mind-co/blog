# brainstacks

Hey there! It's Cameron.

This evening I wrote up a lot of the infrastructure for what I'm calling "brainstacks". I'm not sure if that's the best name for it, but it's what I'm going with for now.

The idea of a brainstack is to be able to save a series of links in a single direction, i.e. if you linked

```
A -> B -> C
clear stack
D -> E
```

you would have two stacks, one with A, B, and C, and another with D and E. You can then go back to the first stack and continue from C, or go back to the second stack and continue from E.

This acts like a kind of document of sorts,
if you think of thoughts as being paragraphs or pieces of a document.
I suspect users are going to want to be able to do a particular recall
thing, and this is structured enough for everyone to understand.

We also get some ML superpowers this way. Any time you have users express connections/interests/whatever, you can use that to train a model to predict what they might want to see next, recommend those chains to others, etc.

The database stuff is all set up, and I've got a basic API for it. I'm going to work on the frontend tomorrow if I can, though I'm going
to a fundraiser for my the [South End Rowing Club](https://serc.com) in the evening, so I might not have time. We'll see.

I'm also going to work on the blog a bit more, especially after each night when I have a session like this!

Thanks for reading!
Cameron
