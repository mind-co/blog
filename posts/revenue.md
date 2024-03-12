# making money

Adapted from a [Twitter thread](https://twitter.com/cameron_pfiffer/status/1767658500476617116)
I wrote. I added a ton of stuff so it's worth reading this if you already read
the thread.

I've had a non-trivial number of people tell me not to make comind because they think it will not make any money.

I appreciate that! And I appreciate people providing perspectives and I love people looking out for me.

I understand where this comes from. Comind is a consumer app and basically a social network, and it's historically been difficult to profit from consumer apps with an ass load of ads.

However, a few responses to that:

1. **Yes it will make money**, because I want to make a great thing that people love and that means hiring people, building infrastructure, etc. I'm a problem solver and I think there are many fantastic, fair, and realistic ways to generate revenue. Especially for something weird and new like Comind. I have more than a few relatively solid monetization ideas that I can start with fairly early on.
2. **Money is not a good reason not to build something you personally are passionate about**. If nobody uses Comind, I will be happy because I made something that I am proud of. I am making this thing because I love doing so. I have a stable career, a valuable set of skills, and a lot of energy, so I can kinda keep doing it for as long as I want.
3. **I am revenue focused early on**. Plenty of significantly worse products spend a lot of time and energy trying to produce products with no real revenue goals. This is very stupid. Comind is going to be relatively expensive to run and I want to make sure that costs and revenues scale roughly together, especially since costs are almost entirely marginal right now.

Monetization in Comind early on is possible, because Comind is not 
just a social network. Social networks are _only_ valuable because 
people are on them. This is their entire value -- no people, no value.

Comind is different because it has both a social value and a independent value.
You can use it for thinking about things all by yourself, 
because it is fundamentally a way to manage YOUR knowledge. It is nice if
there are other people, but it is not a requirement. 

## some possible avenues

Here's a few ways I can imagine generating revenue. It's a moving target and 
this is a rough sketch, so please be gentle with me.

### premium features

Premium features are my preferred approach, because I can actually provide several
bundles to differentiate price on user types. I can imagine a very cheap tier, maybe
on the order of \$1-\$5 a month. This would get you access to extra
knowledge graph tools like 

- Auto-linking
- Regular reports
- An insight feed
- Access to more sophisticated tools like PDF annotations/parsing
- More frequent and higher-quality LLM calls
- Private cominds (AI agents) that provide live commentary on your research
- Website generation of your thoughts -- Obsidian has something like this and it is cool.
- Unlimited melds. Melds are shared collections of thoughts, think like a group chat with superpowers.

For higher tiers, I can provide a substantially higher level of interaction:

- LLMs that can respond on your behalf using publicly available information.
- Custom cominds and more complicated chains of thought, such as 
  - generating entire wiki-style articles
  - engaging is large-scale organizational overhauls of your data
  - ingesting massive amounts of external data (think "hey go tell me everything there is to know about neurons")
- Access to a personal comind with memory that knows everything you think about
and is completely firewalled and private.

Maybe some others. We'll see as the product develops, but I think people
will be really delighted to see what cool things they can get. There's so much
room here for exciting things.

### a high-powered app for high-powered thinkers

The [front-end of Comind](https://github.com/mind-co/comind) is (and always will be) 
open source. The value here is not the front-end but the back-end, where we do
all the math.

The default front-end is general purpose. It's something like twitter currently,
with a single stream, all the basic functionality, etc. But it is a general-purpose
app and may not be suitable for people who want to think fast and deeply.

Some users may really want an immersive, high quality experience over and above
the basic front-end application, and I think there is room here to offer a different
app for power users. The supercharged version would have lots of streams, inline
annotations, something like Slack on Aderall.

I would likely charge a monthly fee for the app. You could also charge commercial fees
for companies that want all their employees to have access, and the pricing would not
be dissimilar from Slack.

This would also be a super fun project for me personally, because it would be
a fundamentally distinct experience but also one that shares the same core
product features. Anyway, just a musing at this point, but one that I think is both
important and interesting.

### ads

I hate ads. We all hate ads. They are annoying. They're everywhere and they are 
so commoplace that many of us do not notice them anymore.

They are, however, extraordinarily lucrative. It's kind of 
foolish to dismiss advertising as a potential revenue source
on the basis of hating everything about ads.

I expect to have a relatively active user base, assuming I can make the 
core product good, and I will have a large amount of information about all of
those users. This of course comes with serious ethical considerations, so 
I think it's worth music briefly about what kinds of limits there should be around
ads.

Here are some rules I might consider enforcing:

1. **User data is strictly opt-in**. If you do not provide data, you will be shown ads on the basis of the advertiser having only population-level information like the age distribution, average activity levels, etc.
2. **Users will be compensated for their data if they opt-in**. Permitting advertisers to learn about you should allow you to have discounted access to premium services, or even direct cash payments. I believe we should all be making explicit choices about how are data is used and what that means, and I think it would be nice to allow people the opportunity to make those choices.
3. **Ads shown to users will be described impartially by an LLM, and users will be able to choose whether to see more of the ad**. Comind is (currently) a text-based app. The user is there to be thoughtful and to engage with information, and it is offensive to the user to insert thoughts into their brain without clearly labeling them. You should see "paid advertisement" and then a statement from an ad-labeling comind "Pepsi would like to tell you about their new flavor.". You get to choose whether to let it into your brain.

1 and 2 are requirements. I do not believe in treating users like they are stupid as 
is common with opt-out systems. Users have private lives and agency, 
and they should be allowed to keep it that way unless they choose otherwise.

I could be flexible on 3 depending on how well it works, but I suspect users will 
respond to this and advertisers will be okay with paying for ad space, even if they
demand a discount for the limitation.

Thanks for reading!

-- Cameron

