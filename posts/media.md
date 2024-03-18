# media

Media will simply not be able to compete with AI, and I think Comind can help.

Before I get into that, I want to comment on why I am writing this weird thinkpiece for a platform that does
not currently meaningfully exist. Comind is a project in active development and is often in varying degrees
of trash fire. However, I think that we have had enough of miscellaneous tech bros building things without
thinking about the consequences. I want to try to be responsible by having a discussion about how we 
compensate people for information services. If you have comments, opinions, or ideas,
please email me at [cameron@pfiffer.org](mailto:cameron@pfiffer.org).

Okay. On to the discussion of why media is going to fall apart.

Media is in the business of (roughly) three things:

1. **Information sourcing**. Going out and finding the news, the stories, the facts, talking to people, etc.
2. **Information aggregation**. Taking the information and putting it into a form that is easy or pleasurable to consume.
3. **Reputation**. People trust the New York Times because it has a reputation for being accurate and thorough.

Historically, the value of media has been in all three of these together. They are bundled.
If you can source info but not aggregate it, it won't be easily digested or transmitted.
If you can aggregate info but not source it, then you don't have anything to aggregate.
If you have a bad reputation, everyone will ignore you.

Sourcing and reputation are going to be automated, more slowly and incompletely.

Sourcing information is valuable and hard, but we are getting better at it. The internet is a
vast source of information. Every time you do anything, someone tags it and sells it or otherwise
uses it to make money. Google, Meta, and others take everything you do and sell it. Similarly,
we can build cameras, use sattelite photos, etc. to get a any information we want, and all those
things are getting cheaper and better. But slowly. 

Reputation, too, is hard to automate -- it's a social construct that is built up over time. You could 
imagine there's some kind of system that could provide an automated reputation system that cross-validates
information, but I think that kind of system is a little farther in the future. Imagine something like a 
giant database that looks at a big corpus of facts and attempts to find consensus, weighted by past accuracy.
I don't know. More thinking on that later.

Aggregation is the easiest to automate. This is where media is going to feel the pain. Aggregation is
just a matter of taking a bunch of facts and putting them into a form that is easy to consume. Writing books,
academic papers, news articles, etc. are all forms of aggregation. Aggregation is a profitable business --
it's a large reason why we like good writers and why we pay them. 

But it's also the easiest to automate. We can do it _right now_. I can go on to any commercially available
service, provide a few bullet points, and get a pretty good article. I can polish this article up and
have something high-quality in a fraction of the time it would take to write it as a human.

This is a massive problem for media. We already have really high quality news aggregators that pull 
information together from a ridiculous number of hard-to-monitor sources like discord and twitter. 
Go check out [AI News](https://buttondown.email/ainews).

I have a hard time imagining that media and information services resembles anything like what we have now. News organizations are __huge__ and costly to run, in large part because they bundle sourcing, aggregation, and
reputation all together. When those orgs start learning that they can get the same quality of aggregation
from a computer, they are going to start firing people who mostly aggregate information. Similarly, we'll
see lots of information sourcing orgs that are _just_ sourcing information, and using language models
to aggregate it.

Operate under the assumption that information aggregation just becomes super cheap. Now all we have
is sourcing and reputation. What model of media do we have under this regime?

One example is smaller, more specialized media outlets that are more like newsletters, but their primary value is in
sourcing specific or niche information. There might be a San Francisco organization that just goes out, 
interviews people on the street, and dumps a giant bucket of information into a [retrieval-augmented generation](https://en.wikipedia.org/wiki/Prompt_engineering#Retrieval-augmented_generation)
pipeline, and then sells the output. 

As a more speculative example, if you go even farther, it's not even clear that having a small specialized shop
is even necessary. If you have a good enough centralized retrieval-augmented generation pipeline, you could just
dump the information directly into a common pool and let people pull out what they want for a fee. You and I 
can just enter misc information we've observed, such as the bus being late today or the price of a sandwich.
Experts can interview someone, upload the transcript, and move on. 

The centralized platform can then take all this information and generate a bunch of articles or provide
some other form of actionable insight or entertainment. 

In some sense this is exactly what Comind is intended to be. Comind is meant to make it easy for you to dump
whatever unstructured information you have into a big pool. Then, you can pull in facts and information from
everyone else on the platform. You can then use this information to generate articles, reports, understand
the world, etc. This is the sourcing step -- **we communally source information** by piling our little information tidits somewhere.

Reputation then comes from people believing information from some users is more likely to be credible or
useful. In a social network, this can evolve naturally, if chaotically. If people tend to cite or refer to
an individual's information pieces. I'll talk more about this in another post, but I think there's a lot of 
hard work to be done on reputation systems, and I simply don't know enough to say anything useful about it.

Anyway. These little tidbits of information are what I think is going to be the future of media. 
In Comind, we refer to these tidbits as **thoughts**. A thought is whatever you want to communicate, store,
share, or try to understand. Some examples:

- The proof to a particularly difficult mathematical proof
- A recipe for a cake
- A link to a news article
- How good a sandwich was at that new restaurant
- Overhearing a conversation on the plane about courtroom drama at a large company

Any and all of these can be used in your knowledge graph to learn things, to summarize information, to generate
polished documents, or anything else you might do as a traditional information aggregation service.

It's important to think about how we are going to compensate people for this. Not just on Comind, but everywhere --
journalism is valuable because the information that journalists collect is hard to get. We want to make sure
they are paid for their work, but it's going to be hard for them to survive on the dwindling value of their 
aggregation services.

Comind could be a way to help with this. The service can act as a central, communal, and open platform for
people to store thoughts. We then compensate people for the value of their thoughts. For example, if you
are a journalist and you find out that a well-known politician is having an affair, you can put that information
into Comind.

Comind would handle the payment for this information. There's a lot of ways to do this and it's not obvious
to me yet what's the best way[^1].

1. **Pay per link**. You get paid for the number of links to your thought. The easiest way, but also problematic. Links in comind are how you pull a thought into your knowledge graph. Thoughts that are highly linked to are likely more valuable, so it might be reasonable to pay you directly for popularity. However, this can be a double-edged sword. As we have seen in the past, paying for popularity ("engagement") can lead people to maladaptive behaviors like lying, stoking outrage, etc. Pay people for popularity and you might get a lot of people trying to game the system. Popularity metrics like this also reinforce common racial, sexual, and other biases.
2. **Explicit compensation**. Users choose to pay for thoughts directly by clicking a button or something. Lots of people have tried micropayments like this before, and thusfar I think most of all of those attempts have failed. I'm not sure I could make this work either.
3. **Pay by quality**. The value of any particular piece of information is basically how "novel" it is. Discovering a new planet or some new algorithm is valuable because we didn't have it before. Repeating it again doesn't make it worth anything. If we can find a way to measure how (a) new and (b) true something is, then we can directly pay people by some measure of how valuable their thought is. This is the most difficult to implement, but also the most fair and the most likely to produce high-quality information. It is however prone to some severe issues about how you measure quality, how that metric is set and by whom, and how you can challenge that metric. In other words, moderation and open governance are important here.

There's likely a few more, but these are a few ways I can imagine people being compensated for thoughts placed onto Comind. I'm not sure any of these are perfect, and some may produce more problems than solutions.

Anyway. I've enjoyed thinking a little bit about what Comind could be. In writing this article, it's becomming apparent to me that we're headed for a very, very weird world, and it's worth being intentioned about how we deal with
information services. I don't know if Comind is the solution, but I think it's worth trying, or at the very least I think it's worth discussing.

Buckle up,

Cameron

[^1]: I'd actually love some comments from a few of the economists who know me. Email me at [cameron@pfiffer.org](mailto:cameron@pfiffer.org) if this post spiked any ideas about how to compensate people for how often their information is used.

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