# brainstacks

Hey there! It's Cameron.

This evening I wrote up a lot of the infrastructure for what I'm calling "brainstacks". I'm not sure if that's the best name for it, but it's what I'm going with for now.

Brain stacks are basically folders of thoughts, bookmarks of a particular order of thoughts. You could
imagine recipes, diaries and journals, pictures of cats, etc. At the bottom of the stack is a text box
for you to add new input, or, a bunch of things we think are related or interesting. Then, you can click them to 
add them to your stack.

The goal is to have shared stacks, melds, which are collaboratively made by you and others. In the meld,
each user adds things to the bottom of the stack, and other users all see it (sorta) immediately. 

It's basically a group chat, but with the distinction that everyone is not seeing just the text box, but also 
a ton of information that they already have available. I.e., if we're all just chitchatting about how cute
dogs are, I can pull up this dog picture I saw a few weeks ago that was insanely cute.

Anyway. I'm excited.

## A little more on brainstacks

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

Additionally, this also solves a problem I've been having for some time, which is: how do I get users to build their knowledge graph without them having to **see** a graph/network structure? We can provide that interface at some point, but the default interface should be something everyone knows. 

The database stuff is all set up, and I've got a basic API for it. I'm going to work on the frontend tomorrow if I can, though I'm going
to a fundraiser for my the [South End Rowing Club](https://serc.com) in the evening, so I might not have time. We'll see.

I'm also going to work on the blog a bit more, especially after each night when I have a session like this!

Thanks for reading!

Cameron

~~~
<div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://blog-comind-me.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
~~~