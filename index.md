+++
"""
    {{blogposts}}

Plug in the list of blog posts contained in the `/blog/` folder.
"""
function hfun_blogposts()
    curyear = year(Dates.today())
    io = IOBuffer()

    base = "posts"

    # List all files in the posts directory
    posts = filter!(p -> endswith(p, ".md"), readdir(base))
    
    # Get the first line in each file that begin with `# `
    for post in posts
        open(joinpath(base, post)) do f
            for line in eachline(f)
                if startswith(line, "# ")
                    # Remove the `# ` and write the line to the buffer
                    let 
                        line = replace(line, r"# " => "")
                        linkloc = joinpath("posts", replace(post, ".md" => ""))
                        write(io, "- [$line]($linkloc)\n")
                    end
                    break
                end
            end
        end
    end

    # for year in curyear:-1:2023
    #     ys = "$year"
    #     year < curyear && write(io, "\n**$year**\n")
    #     for month in 12:-1:1
    #         ms = "0"^(month < 10) * "$month"
    #         base = joinpath("posts", ys, ms)
    #         isdir(base) || continue
    #         posts = filter!(p -> endswith(p, ".md"), readdir(base))
    #         days  = zeros(Int, length(posts))
    #         lines = Vector{String}(undef, length(posts))
    #             write(io, "abc")
    #         for (i, post) in enumerate(posts)
    #             continue
    #             ps  = splitext(post)[1]
    #             url = "/blog/$ys/$ms/$ps/"
    #             surl = strip(url, '/')
    #             title = pagevar(surl, :title)
	# 			title === nothing && (title = "Untitled")
    #             pubdate = pagevar(surl, :published)
    #             if isnothing(pubdate)
    #                 date    = "$ys-$ms-01"
    #                 days[i] = 1
    #             else
    #                 date    = Date(pubdate, dateformat"d U Y")
    #                 days[i] = day(date)
    #             end
    #             lines[i] = "\n[$title]($url) $date \n"
    #         end
    #         # sort by day
    #         foreach(line -> write(io, line), lines[sortperm(days, rev=true)])
    #     end
    # end
    # markdown conversion adds `<p>` beginning and end but
    # we want to  avoid this to avoid an empty separator
    r = Franklin.fd2html(String(take!(io)), internal=true)
    return r
end

blogposts = hfun_blogposts()
+++

@def title = "Comind Blog"
@def tags = ["syntax", "code"]

# The Comind Blog

Howdy y'all. This is the blog for Comind, an attempt to make a cool knowledge
graph, social platform, AI playground, and messaging tool. 
 
We'll be sticking some stuff in here in a bit, hang tight.

## Posts

{{blogposts}}