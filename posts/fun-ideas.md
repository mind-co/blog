@def hasdisqus = true

# some fun ideas

Interesting ideas for the platform, in no order. Updated occasionally and all speculative.

## parenthetical response

Add a `(a,b,c)` tuple that provides natural-language choices for the user to select from. These are recommended to the user, so you might have a thought-response flow to look like

> User: I just saw sammy at the mall.

and a parenthetical response might be

> (more on sammy's favorite stores, more on the mall, sammy's invitation of you to the mall)

You could click these and receive more suggestions related to these. I.e. "more on sammy's favorite stores" might lead to Comind trying to aggregate all your previous conversations with sammy to find out what she likes. If she likes Hot Topic (which I also do), then it might suggest that you two go shopping together.

The information for the recommendations should come from thoughts where you and her have explicitly interacted. You responded to one of her thoughts with an emoji or an opinion/reference, etc.

With parenthetical responses, we can provide a set of suggested queries that we think would delight or inform them. "more on the mall" is a simple query to use for search.

## privacy

Privacy is a nifty hard problem in comind. A lot of the stuff that happens behind the scenes is that we do lots of search & aggregation on your behalf. This can that we are searching across information that is private, shared with you from others, or completely public. 

You want to make sure that the end location (a new thought) is going into the right place -- we will not let information from private or secure areas of your digital brain make it to others without permission from all who were involved in a thought.

Suppose the you said something like

> Pranay said he got a call from his lawyer

We would suggest a few other things that you might want to know, like

- Pranay
- Pranay's criminal record
- Pranay's lawyer
- Pranay's epic sailing trip

Now, let's presume Pranay and you had a private chat on comind where Pranay has disclosed that he was arrested five years ago for public urination. Definitely don't do that dude, but whatever.

Anyway. When you try to summarize Pranay's criminal record, you need to be concious of where that information is going. That information cannot be pulled into a **meld** (collection of thoughts, basically a group chat) that contains user who Pranay did not share that thought with. 

This problem can be pretty bad if thought `B` comes from thought `A`. This could be because you had the meld `A`

> Pranay: I totally got arrested for public urination

then `B`

> You: woah man you should not do that

finally, `C`

> You: also that's kind of funny actually but seriously don't

In "comind world" `A -> B` implies that `B` is _derived_ from `A`. It's a way for us to track the flow of information. 

In the demo above, thought `A` (Pranay telling me got arrested), is private. That means that `B` _must_ be private because `A -> B`. The same is true for C, because `A -> B`$\rightarrow$ `C`.

The connection `A -> B` connects Pranay's `A` to your `B`. Pranay has shared his thought with you, which means that you can use that thought for any private thoughts you might have. These types of connections are likely to be common -- I anticipate having lots of two-person melds that are basically better chat inferfaces. These tend to contain lots of small tidbits, all of which are private to each of you. You cannot share Pranay's thoughts without him also sharing it to the same recipient.

I don't think this is actually terribly hard. Essentially, all you need to do is run an expansion on the thought graph. For example, an algorithm might simply be recursive function calling, where you'd do

```julia
function check_private(thought, environment_is_public)
    # Get the parent thoughts
    parent_thoughts = parents(thought)
    parents_private = map(
        x -> check_private(x,environment_is_public), 
        thoughts
    )

    # If any the parents are private and the environment
    # is a public one, this thought is not safe.
    if environment_is_public
        return all(parents_private)
    else # private mode, can use everything
        return true
    end
end
```

Here's we'd run 


- `check_private(C)`, which calls
- `check_private(B)`, which calls
- `check_private(A)`, which returns `true`

We then know that `C` is not private and cannot be shared in public environments.

Sharing lots of individual thoughts requires tools to make permissions easy. I want to tell people that Pranay got arrested, because it would be funny, so I have to ask Pranay if it is ok that I share his information. If he says yes, then it becomes public.  Otherwise, the permission is denied.

For this, we'd need to make it _very easy_ to permit others to use your thoughts. We can do a few things here to help:

### suggestions

Unobtrusive, short lists describing the information to be shared/deleted, with a natural language description of that information. A share/don't share button, as well as an attempt to describe what it would mean to share your information (i.e. "don't share, this is abouty your affair" or "share, this has nothing to do with your affair").

### concepts

Add "concepts" where all users in the same concept can access thoughts published into that concept. Work, family, friends, cooking, etc. are all concepts you might have. You would be able to tag multiple concepts when you publish a thought. 

To expand more on what a concept means in comind, a "concept" is a group of users/cominds that are organized around the same general theme. For example, there might be "cooking (public)", "mindco engineering (private)", and "the void cafe (public)" concepts, all of which contain a "comind" to personify and describe all the thoughts in their concept.
