@def hasdisqus = true

# tech stack

In developing comind, I've made a lot of non-standard choices about our tech stack. Comind is my first solo-developed project of this scale, and it is intended to eventually handle hundreds of thousands or millions of concurrent users.

Writing a bunch of code for an app that might not ever pan out takes a lot of effort, and I think one of the things I have triangulated on is to make sure that I am having fun! I want to be stimulated and to learn.

Most of my code is written in Julia for the backend, with Flutter for the front end. I have a few docker containers for postgres (the database) and some Python code to do stuff that it would take weeks or months to do in Julia.

The "optimal" tech stack is some combination of Python/Kubernetes/React Native. I made clear choices to make sure that I can stay motivated and interested in the project while I'm working on it, and I'm not focusing on common tech stacks.

It may end up biting me in the ass later, but I am paying attention to scale early on so that my tools can grow with me.
