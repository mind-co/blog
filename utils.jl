function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_list_folder(folders)
  @info folders
  folder = folders[1] # because the shortcode is relative
  @info readdir(folder, join=true)
  paths = sort(readdir(folder, join=true), rev=true)
  @info paths
  buffer = IOBuffer()

  println(buffer, "<ul>")
  for path in paths
    if !endswith(path, ".md") || endswith(path, "index.md")
      continue
    end

    # Replace ".md" with /, urls are of the form /devlogs/filename/
    new_path = "/" * replace(path, ".md" => "/")
    firstline = replace(readline(path), "#" => "") |> strip
    println(firstline)
    println(buffer, "<li><a href=\"$new_path\"> $firstline </a></li>")
    println(new_path)
  end
  println(buffer, "</ul>")

  result = String(take!(buffer))

  return result
end