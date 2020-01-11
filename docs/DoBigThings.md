##  Doing big things -- Virtualization, Automation, Computational Thinking

### Agenda:
- Brief background of the Virtualization Admin role
- With what would any of this help?
- What are these things?
- How can we use them to do the awesome?
- Conversation/questions

**What**:  technology continues to enable ever more fantastic things. We will achieve things currently unimaginable as we leverage virtualization, cloud, automation, and computational thinking -- new products (games, social platforms, the next things), new solutions (self-driving cars, end hunger), eradicate disease, anything we want!

### Virtualization
- Concept:  prezi
- Benefits:  abstraction (separation of valuable things from the underlying hardware), agility, resilience, mobility, disaster avoidance, part of what enables treating of infrastructure as code
- in the world:  on-premises (private cloud), public cloud (Amazon Web Services, Microsoft Azure, Google Cloud Platform)
    - sizing:  standard physical hosts are coming with 2TB memory (that's 2048GB -- 128x the memory size of today's better laptops), 80 cores, 187GHz (versus 4-8 cores in today's laptops); it's not uncommon to have 600+ physical hosts to support thousands of VMs (20K+ easily) -- doing 30x more (or 30x reduction in physical); so, instead of a serving of \<something you don't like yet> peas, say -- if there are 100 peas in a scoop, with this kind of ratio, we get all the same health benefit (performance) while needing only 3 peas

### Automation
- Overview: translate actions in code (encapsulate)
- need to CRUD (create, read, update, delete) things?  Can translate an action into code, then do it repeatably, the action is now portable/transferrable (everyone else can perform that action now, too)
    - if you write in code things like:
        - `Set-Room -Clean:$true`
        - `Set-Yard -Mowed:$true -BagLeaves:$true`
        - `Send-Ball -Destination OurBasket -Dunk:$true`
        - `Set-Homework -Category Math -Status:DoneCorrectly`
    - you can then let your friends (co-workers) have the same skills/capabilities (which translates into technology admin, automation, scheduling, etc.)
    - and, now that everyone can just set `Set-Room -Clean:$true` to run when home automation proximity detection sees that they leave their room, everyone can use that time saved to do \<the awesome>

### Examples
- reporting -- storage provisioned/consumed across, events, issues, data mining
- configuration -- ensure that 500+ hosts are configured the same for the important features/attributes; 13 months for vDPG config -> 0.75 Months:  17.33x faster:  so, instead of a regular school day (say ~7h), school would be done in ~25 minutes, or school week:  done in 2h; or, 1h of homework, done in 3.4 minutes -- get an extra 56min of XBox per day?!
- deployment -- need new server?  Get one in minutes instead of weeks
    | Activity | Before | After | Speed Increase |
    | -------- | ----- | ------ | -------- |
    | deploy/configure new VM | 7 days   | 1 hour | 168x faster
    | that's like: |
    | a school year | ~180 school days | one day | 168x faster
    | earn Eagle Scout | 5 years | 11 days | 168x faster
- other things not even currently possible in manual way:
    - mine data about web request failures for a management infrastructure that gets approaching 1 million requests per hour; automation makes it possible in 4 minutes; how long to look through 1 million requests manually?  how long to just count to a million?  A:  27.7h if you count 10 numbers per second; and, at this new-event rate, it's making more than 140 new events per second; and, by the query running in 4 min, versus the 27.7h that let's say we could do it in, we're past 400x faster:  drive to GMa's | 2 hours | 18 seconds | 400x faster, drive to Disney World | 14.5 hours | 2 min 11 sec | 400x faster, fly to Orlando | 4 hours with airport arrival time and whatnot | 36 seconds | 400x faster
- the point:  so much more interesting stuff to do -- automate everything we can so as to be able to have time for the interesting/meaningful/fun stuff!

### Computational Thinking
- what:  achieve the most things
- processors can do billions of operations per second
- mindset of pushing everything to run on hardware eventually, to harness the raw power:  see how we can package up anything we need done and send it to a processor to do

### The value:  we get time to do other interesting / important / currently impossible things by partnering with processors to do work, leading to discoveries, cures, awesomer games, new hobbies, family time, outdoor fun, swimming, boating -- solve hard problems once, move on to the other interesting things in the world (or out of the world)

ever changing, faster compute, growing clouds, more power, more awesome

### Conversation/questions
- What's up?