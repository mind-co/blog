@def hasdisqus = true

# the future of comind

__TLDR__: comind development will be quiet because I have a new job, public-facing role where it would be unethical for me to publicly market comind development. Additionally, I won't be seeking funding going forward. Comind is going to be the thing it has always been, a personal hobby project that stimulates me and gives me an opportunity to learn.

I've been working on comind for about a year now. It has been (and still is) the best project I've ever worked on, and the one that has held my attention for the longest. I also still believe that something like comind is going to exist. I am in love with the project, I'm still addicted to it, and I think about it constantly. I have nearly a hundred thousand lines of Julia, TypeScript, and Dart code.

That said, I am soon going to be in a public-facing role, and part of doing that job ethically means that I should not market personal projects. It's not in line with my personal values to use my company-sponsored presence to market personal projects. 

I like my new job a lot and I want to do it well. It's a perfect fit for me, and so I have to kind of pull back a little bit from comind development because it is the correct thing to do.

So, I'm going to provide a final update on comind to share what I've learned before I start acting as a public representative.

## what i learned

I've been trying to figure out _exactly_ what that thing is for a long time. Product design is really hard, especially when you're doing it alone. Comind too is so new and weird that it's hard to pin down exactly what I want -- I have dozens of notes where I've sat down for hours trying to describe what comind should feel like, and it's been extremely difficult to pin down as a concrete product.

How do I take these random notes and turn them into a product? Lots of them are unhinged or unclear, and some can be contradictory, too pie-in-the-sky, or complicated to implement from a front- or back-end perspective. comind is __extremely ambitious__, and similarly, difficult to implement. 

## life

Working on a large project like comind takes a hilarious amount of time. For months I did not really have a social life. I sat in my room for _hours_ a night writing code, struggling with something, etc. I stayed up late most nights and wasn't able to wake up early enough to go rowing or spend morning time with friends.

All I wanted was to have full workdays, but sadly I have a job that requires a lot of attention and is also quite draining. On weekends, I mostly focused on trying to make up for the lack of social interacting or exercise rather than take workdays. 

I definitely needed the weekends for my sanity, but I struggled with a lot of anxiousness about wanting to work on comind but needing to prioritize my job or being happy and fit.

Comind also got me into the SF AI scene, which is a lot of fun. The energy here is electric, and I'm fortunate that my new job is in the same space. I basically get to wander around and meet all these amazing people and learn about what they're working on! How cool is that?

## the backend

I'm not really that great a full-stack engineer, especially when I started. My background is numerical + statistical computing. I'm a data/optimization/stats person. 

Comind is not a statistical application. It's a product. 

It's littered with technical debt and poorly planned architectural decisions that slowed me down substantially. I spent a lot of time afraid of undoing random code because I had to constantly do massive refactors to make any new slight change work. The database is a hacked-together mess with poor internal representations.

The backend is a mess. It's hard to do. You have to run authentication, authorization, deployment, and all the little fiddly bits that make comind cool. Things like performant websockets, language model processing, talking to the database, handling vector search, etc. are all hard things to do all together. Each of these by themselves is reasonably simple, but I had a lot of trouble unifying everything in a simple, clean way.

In part this was a result of trying to use Julia for everything on the backend. Julia is feature complete, but it added some difficulty to my development process. I'm a new app developer, and making comind would be hard in even an established language like Python. 

Julia is my favorite language. I adore it, and all the time I've spent writing it has been a complete joy. I will always be a big Julia fan and I will attempt to do as much of the backend in Julia as I can, but ultimately standing up a simple, clean API is probably best done in a robust and well-established web framework like Django, Flask, or FastAPI. I've worked with Actix in Rust, but Rust development is clumsy and requires a lot of weird boilerplate that's hard to bolt in if you are not a Rust pro.

I'm not completely sold on using Python for the backend. I need to do a complete re-write of the backend, and it's tough to decide on whether to invest time in learning to do the web backend in Julia well, or to just use Python and be done with it. I also have a job where I work exclusively in Python, so it might be nice to have some cross-learning about the language I'm going to be spending all my time in.

Julia made things a little more difficult in a few ways. Lots of these have _nothing to do_ with Julia, and should be read more as a skill issue on my part. They also should not reflect poorly on the incredible community that works on all these tools + issues largely for free.

1. It's not commonly used as a web language, which means there's not a lot of writing and common design patterns to use. I struggled with lacking an idiomatic web structure. I've experimented with [Python's FastAPI](https://fastapi.tiangolo.com/), and it's obvious that it's designed to pin you down to a very specific way of doing things. There's not a lot of leeway, and you're incentivized to do things in a specific way that results in a good architecture that handles auth + database integrations well. This is changing a little bit. [Genie.jl](https://genieframework.com/) is perhaps our best example of a web framework in Julia. It's a good product, but it also requires a lot of up-front investment (as with any web framework). I made the choice very early on to use the simpler [Mux.jl](https://github.com/JuliaWeb/Mux.jl) instead, and I wish I had invested more time in using Genie as a solid backend webserver. 
2. The generative AI tooling, while incredible, can be clumsy to work with when it comes to structured text. I'll be working on this going forward because it's a significant need and because structured text is among the most important tools for use in generative AI applications. Structured text generation is quite new and not well-supported by various APIs. OpenAI has support for [structured text now](https://openai.com/index/introducing-structured-outputs-in-the-api/), but I do not want to give OpenAI my money until they figure out a safety-first approach to AI research. Comind needs serious structured text support and it just doesn't (safely) exist unless you're using Python or hand-rolled inference servers that come with a massive set of infrastructural difficulty. I can also fix this stuff in Julia, but various time constraints and generally terrible project management ended up limiting my ability to fix things upstream as much as I might like. 
3. It's a resource-poor language, meaning that there is not actually that much Julia code for language models to use. You have to be aggressive with managing context, which you have to do much much less in Python or other languages. It's a lot of mental overhead, especially as someone who's not really experienced in app development and may struggle to know what to include 
4. Few serious engineer types know to write it. I've had many people reach out to me about wanting to help, but they're all good at other things and can't really meaningfully contribute. This is also due to me being a poor project manager and generally struggling with a concrete vision and making the platform easy to develop in. I have a telegram group with my brother and his engineering friends in it where I talk about comind development. Some of them offered to help in the beginning, but it's completely hopeless to ask them for help when doing so would require them to step away from tools they have a decade of experience in for my hackedy-ass Julia stack. 
5. Julia can struggle with having an idiomatic programming model. I generally think that, because Julia is still relatively new and often written by academics, it tends to be a little more sporadic in how people write Julia code. I personally have struggled with applying consistent patterns -- it's a mix of functional stuff, heavy typing, and also vaguely imperative brute-force monolithic function programming. This is partly because I have a tendency to be a scattered engineer at times, especially when working alone.
6. Third-party vendor support is often non-existent. The fact of the matter is that any SaaS product like Supabase, Modal, Vercel, Cloudflare, neo4j, etc. are all difficult to work with if you do not have access to the vendor-supported API package. Python _always_ has a package for everything. It's feature rich, well-documented, and can take you from 0-60 in a few minutes, and a language model can mangle the API into whatever hideous shape you want. Julia is not like this. Trying to demo any service at all might require days or weeks of work on my part to bolt a shitty package together or even simply wrap the Python package in a Julia interface. And I understand why this is the case completely -- few people actually use Julia for various backend services, so why would you ever support it? I'd happily pay for pretty much _any_ service if it were available in Julia, but sadly I am one of few and cannot pay the high rates it would take to incentivize someone to build a Julia package for everything.

I've sketched out a simple API using FastAPI already. It's performant, easy to develop in, and robust. It comes with free API documentation. Auth is a breeze, supabase integration is incredible, and adding new API endpoints can be done almost entirely by a language model in [cursor](https://cursor.sh/). There's just a _shitload_ of documentation that's kind of purpose-built for my exact use case.

At the same time, all the language model/gen AI stuff in python is 100% the best out there, and it's not close. All novel language model interface stuff is easily accessible in Python.

As many of you know, I don't really care for Python that much. It's a pain to work in. The amount of time I've spent struggling with virtual environments, installing packages, sifting through versioning and dependency issues, performance, and general anguish is not funny at all.

Python works because (a) it has an extremely approachable syntax, and (b) the ecosystem is so incredible that everyone has to use it by dint of network effects.

Network effects are a real thing. My time is valuable, and ultimately Python has a hilarious amount of aggregate investment in it each year. All I need is an API right now, and that's proven difficult for me.

Anyway, who knows what I'll decide there. Ultimately I just tinker around with stuff. Maybe something will stick.

## the front-end

Front-end development is _hard_. If you have ever looked down on JavaScript/web dev/UI people, you should stop that fucking immediately. Front-end development is an extremely different paradigm full of folk-wisdom and best practices that are hard to learn without years of experience. I come from a numeric and HPC background, and trying to apply those skills directly to app development is a complete disaster. 

I've meaningfully tried both Flutter and React, but have mostly settled into React. React is straightforward and relatively easy to work with, even though it's web-only. Flutter is a great tool but the web experience is terrible and I don't trust Google at all.

Quick overview:

### Flutter

I developed a big flutter app for comind a few months ago, but scrapped it due to fears about the future of the framework. It's a good tool with amazing support, but I just don't trust Google with my time and energy anymore.

- Flutter is easy to work in if you come from a Java/C# background. You can pick it up quickly too if you don't have that background.
- The documentation is... sometimes lacking, but it's not bad.
- Third-party components and packages are lacking. I wanted a good markdown editor like the web's [tiptap](https://tiptap.dev/), but they are hard to come by or difficult to work with in flutter.
- The web apps made with Flutter are terrible. 
    - They are uncanny -- they don't feel like real web apps, in part because they render everything as this weird canvas thing rather than simple HTML. Using a flutter web app just feels _wrong_. 
    - You have to actually _program in_ page up/page down. I shouldn't have to do this for a web app, it's a pain.
- Flutter is really more of an app development framework than a web one, and I primarily wanted a good web app for prototyping purposes.  - 
- Flutter is _incredible_ for building (compiled) apps. Everything that comes out of it is fast as shit, compiles to web/desktop/mobile much easier than anything else.
- Google is a fucking problem. 
    - Flutter is constantly in this half-way state where nobody's ever sure whether to keep working on their flutter apps because Google is infamous for killing projects. 
    - I actually stopped using Flutter after asking a question to a front-end person who's a Google friend. I asked "Do you think flutter will be around in 5 years?" and he said "No comment". 
    - They [laid off](https://thenewstack.io/whats-next-for-flutter-after-layoffs-hit-google-team/) after this, but supposedly it was because they wanted the team to move to somewhere cheaper. 
    - I can't reasonably invest hundreds of hours into a framework that has even a 1% chance of falling apart. The cost of that is simply too high.
- I scrapped a long-developed flutter app because I was worried about the future of the framework.

### React

The current version(s) of comind are built with React, particularly Next.js. React is a web framework from Facebook that's in wide usage, and it is easily the most popular web framework. I don't mind developing in it. It's quick, it works, and it's got lots of resources.

- React is fine. It's not bad, it's not great, it just kind of works.
- State management kind of sucks but you can get by.
- Lots of resources to use.
- The development experience is _sort of_ good. Flutter was way better, but I can passably write React code pretty quick.
- It's littered with hateful amounts of boilerplate. Holy _shit_ there is so much typing to make things work. 
- Next.js is good. I'd recommend it. Vercel builds web apps really easily, so running development builds on my phone or whatever was really easy. 
- The [Mantine](https://mantine.dev/) component library is lovely to work with. It's heavily opinionated and that makes it super easy to use.

## the future

Something like comind will exist, and I think it will be significant. We've poked at maybe 1% of the things that generative AI can do for how we connect, share, and consume information.

The industry focus right now is basically infrastructural:

- How do you serve tokens fast + cheaply? 
- How do we get models that work reasonably well? 
- How do you do retrieval augmented generation + groundedness well? 
- How do you talk to your data and make a useful representation of knowledge?
- How do you make agent workflows easy to build?
- What hardware do we run this on?
- How do we structure our APIs?

Early, serious consumer applications are still emerging, and people are still relatively constrained by traditional thinking about how to build useful and interesting tools. I'm really excited to see these develop, and thankfully I get to continue to monitor the space going forward.

People are already starting to pick at the edges of where I feel comind sits:

- Claude's projects interface handles memory and context management. It's clumsy, slow, buggy, and extremely inflexible. However, working with Claude's artifact system is slick, and I can easily see the way Claude's product can grow to be a very powerful tool. Claude's projects interface is pseudo-social in that you can have a team that works on it, but it's hilariously expensive and doesn't handle comind's intended social aspect.
- Perplexity _sort of_ has a comind-like interface, but it's focused purely on retrieval and summarization. Comind is very much an information retrieval product, but the focus is on on-platform content and not external sources. Perplexity can go a lot of different ways towards consolidating high-reputation sources and making it easy to access and summarize quality information from many sources. Perplexity also struggles with kind of being a dick about compensating publishers, but this is [maybe changing](https://www.theverge.com/2024/7/30/24208979/perplexity-publishers-program-ad-revenue-sharing-ai-time-fortune-der-spiegel).
- Elicit helps with research, which is one of the use cases we've identified for comind. Elicit has a novel, clear interface for interacting with entire literatures. It too does not have a way of working with large streams of information, and handles annotation and non-academic sources poorly. Comind is intended to work flexibly with academic sources as well as commentary or blog posts about those sources. Elicit is also not a social product, which I think is an extremely important feature of knowledge work.
- MemGPT is a fantastic project for building assistant-style language models with memory. This is more of an infrastructre tool, not a consumer product, but it's got so many awesome avenues to pursue. You should follow them closely if you are not already.
- [mymind](https://mymind.com/) is a note-taking project with kind of an artsy feel. It has a cool interface and lots of cool little AI-powered features. It's a slick app designed to help you understand lots of weird little thoughts and pictures. It is also _explicitly_ not social, which I think was a mistake -- choosing to make mymind a non-social product may have relegated it to the graveyard of random note-taking apps that are adding some kind of AI-powered spin. Everyone is doing this now (Notion, Obsidian extensions, etc.), and it's not really clear how anyone is adding any serious value to the space. All the AI bolt-ons are afterthoughts and not core to the product. 
- [mem](https://mem.ai/) is also a note-taking app, and probably the one with the best AI-powered features. It handles a lot of different ways of ingesting information in the ways that comind is intended to -- you can send it emails, text messages, log twitter threads, etc. Generative AI applications provide the superpower of _synthesis_ -- dump a lot of mildly insightful garbage into a bucket, and let the model make sense of it. The version I worked with for a while was kind of clumsy on the AI side, but supposedly they [have a new version](https://get.mem.ai/blog/mem-2-dot-0) that's much better. I haven't used it but I think they're releasing it soon. The core editing experience of mem is really good, but it's lacking the social component + shared knowledge graph aspect that I have in mind. It's also not _fun_ in the way comind is supposed to be.
- [exa](https://exa.ai/) is a search engine for language models, basically. It's a cool project. It does information retrieval well and cleanly, and it is API powered for quick use by language models. A large part of the future of generative AI is going to be about managing information flows to models. Exa is well-positioned to function as something like this, at least for public vaguely ground-truth information. I could see them also providing a memory bucket for private information as well. Comind's sharing mechanism is intended to make transferring knowledge between big memory buckets easy. Exa is (currently) a well-built search engine, but it lacks the memory management tools that every language model on earth is going to want.

I'm sure people will eventually triangulate on the set of features I have in mind, and they'll probably do it better than I ever could. The thing I believe more strongly than anything is that my rough and vague descriptions of comind are _important_. 

People will make it, because you can't _not_ make it. To me, comind's social-first, knowledge graph sharing, communication-forward, and information retrieval aspects make it a fundamentally important tool for connecting thoughts and information. 

Most social networks we have are not primarily about learning. They are about connection. Connection is vital. It's what makes society function and people thrive. It is how we grow, form professional networks, share opinions. It is also a place where we foster echo chambers and spew hatred. 

Some of us who have seriously used twitter or linkedin for educational or professional purposes have seen the value of a social network that is focused on learning. I learn who's working on what from Twitter, what's important, what's in the zeitgeist, etc. I would not get this from my personal network -- I need a diffuse information feed curated by an algorithm. 

The next step in these platforms is to integrate everything that everyone knows. To put that information in an accessible way, and to synthesize the things __you know__ with the things that __everyone knows__. I want to talk to my friends and have dates for a picnic auto-suggested based on my emails, my calendar, half-assed plan mentions to other people, and learned preferences for times and days I might like to meet. I want to borrow masterfully written newsletters or blog posts and draw connections between these newsletters and new academic papers. I want to see people's 160-character tweet-like thoughts about a field of study and immediately put it into context. 

All of this information matters. We as a society have not really found a good way to track information in the way that it comes to us. You and I are constantly exposed to a firehose of information, but we only have tools to monitor and work with a small fraction of this information. We write things down, we tweet, we send text messages, we send emails, we skim headlines, we read books, we listen to podcasts, we overhear conversations at a coffee shop. We have no good way to make sense of it all. 

The whole point of comind is to be a massive bucket with an ordered and regimented approach that makes it easy to work with all of this in the way that humans do. I want an all-in-one platform that respects my privacy, that treats me like an adult, and functions as a _tool_ rather than the privacy-selling, engagement-farming, knowledge-sucking black hole platforms we have today.

Maybe people will get this some day, because I think it's the thing all people deserve. I think people want it but they don't know it yet. I've had _many_ people reach out to me with messages of support or offering help. People are able to read through my scattered and vague messages are see something that they already know is valuable, even if neither of us can completely articulate what it is. 

To me, this is evidence that I've been on the right track. I'm not alone -- people are dancing around this really beautiful thing that could exist but doesn't yet. Someone will make it.

Ultimately, I'm a shitty front-end engineer, bad at infrastructure, bad at scaling, mostly alone, terrible at converting ideas to practical MVPs, abysmal at asking for money, have zero formal training in any of the things I'm trying to do, and a bad designer. I struggled collaborating with others pretty significantly, as comind is my baby and I couldn't let go of it or delegate appropriately. I don't have infinite time or money. Like many others, I struggle with mental health issues as well. Motivation can be hard to come by when everything is constantly broken or failing, and an MVP has been two weeks out for six months. 

I often feel like an enormous failure when it comes to comind. The gap between my belief in the importance of the product and my ability to build it is enormous. A lot of my self-worth is tied up in being competent and successful at things I've put my mind to. I've put a __lot__ of myself into comind and it has been hard on me to feel constantly brutalized by failure.

None of this means I'll stop tinkering or thinking about it. My brain becomes stuck on things for years and years. Comind is lodged so deep in my brain that I'm going to make it, just for me, because I can't not. There are few projects I have worked on that have the same extent of learning opportunities that interest me, and I have worked on many interesting projects. 

I've had so much support and interest from everyone over the past year. Thank you to everyone who's sent emails and direct message I forgot to respond to. Thanks to the people who have hopped on calls with me to talk about hair-brained, half-baked ideas. Thanks to the people who have offered to pay for the service, beta test, or describe their workflows. Thanks to the Julia community for being helpful and delightful. Thanks to my brother, his friends, Akhil Rao for amazing support, Grace Woods for interrogating my ideas and being interested, Aaron Mack for continued design help, and everyone else who contributed time or energy.

I'll leave this blog up, but there won't be any further posts for the foreseeable future.

Thanks, everybody. Good luck out there 🫡

-- Cameron