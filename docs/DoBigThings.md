##  Doing big things -- Virtualization, Automation, Computational Thinking

### Agenda:
- Brief background of Virtualization
- With what would any of this help?
- What are these things?
- How can we use them to do the awesome?
- Conversation/questions

**What**:  technology continues to enable ever more fantastic things. We will achieve things currently unimaginable as we leverage virtualization, cloud, automation, and computational thinking -- new products (games, social platforms, the next things), new solutions (self-driving cars, end hunger), eradicate disease, anything we want!

### Virtualization
- Basics:
    - run more with less, and better utilize the hardware that you do get
    - make more robust the machines that do run, separating them from the underlying hardware
- Concept visualization:  [VirtualzAndClouds Prezi presentation](https://prezi.com/p/9v-hntpnwdvu/)
- Benefits:  abstraction (separation of valuable things from the underlying hardware), agility, resilience, mobility, disaster avoidance, part of what enables treating of [infrastructure as code](https://github.com/awslabs/aws-cloudformation-templates/blob/master/aws/services/ElasticLoadBalancing/ELBWithLockedDownAutoScaledInstances.yaml)
- in the world:  on-premises (private cloud), public cloud (Amazon Web Services, Microsoft Azure, Google Cloud Platform)
    - sizing:  standard physical hosts are coming with 2TB memory (that's 2048GB -- 128x the memory size of today's better laptops), 80 cores, 187GHz (versus 4-8 cores in today's laptops)
    - it's not uncommon to have 600+ physical hosts to support thousands of VMs (20K+ easily)
        - doing 30x more (or 30x reduction in physical)
        - so, instead of a serving of \<something you don't like yet> peas, say -- if there are 100 peas in a scoop, with this kind of ratio, we get all the same health benefit (performance) while needing only 3 peas
        ```
        100 peas --> just 3 peas
        ```

### Automation
- Overview: translate actions in code (encapsulate)
- need to CRUD (**C**reate, **R**ead, **U**pdate, **D**elete) things?  Can translate an action into code, then do it repeatably, the action is now portable/transferrable (everyone else can perform that action now, too)
    - if you write in code things like:
        ```PowerShell
        ## clean up my room, turn off the lights
        Set-Room -Clean:$true -LightOff:$true

        ## bag up the leaves, mow the yard, and put the stuff on the curb
        Set-Yard -Mowed:$true -BagLeaves:$true | Move-Clippings -ToCurb

        ## finish the math homework and submit to the teacher
        Set-Homework -Category Math -Status:DoneCorrectly | Submit-Homework -Destination teacher@MySchool.com

        ## !! win big
        Send-Ball -Destination OurBasket -Dunk:$true | Start-Celebration -DoMoonwalk:$true
        Show-Sportsmanship -Level Maximum
        ```
    - you can then let your friends (co-workers) have the same skills/capabilities (which translates into technology admin, automation, scheduling, etc.)
    - and, now that everyone can just set `Set-Room -Clean:$true` to run when home automation proximity detection sees that they leave their room, everyone can use that time saved to do `the awesome` and `the interesting`

### Real World Examples: Automation and Awesome Returns
- reporting -- storage provisioned/consumed across, events, issues, data mining
- configuration -- ensure that 500+ hosts are configured the same for the important features/attributes; 13 months for virtual distributed portgroup ("vDPG") configuration -> 0.75 Months:  17.33x faster:  so, some comparisons:

    | What | Before | After | Speed Increase |
    | -------- | ----- | ------ | -------- |
    configure hosts for given networking features | 13 months | 0.75 month | 17.33x faster
    that's like: |
    regular school day | ~7 hours | ~25 minutes | 17.33x faster
    school week | 5 days (~35 hours) | 2h | 17.33x faster
    homework | 1 hour | 3.4 minutes | 17.33x faster
    chocolate chip cookie | 6 inches across | 8.6 feet across | 17.33 wider

    get an extra 56min of XBox per day?!
- deployment -- need new server?  Get one in minutes instead of weeks

    | What | Before | After | Speed Increase |
    | -------- | ----- | ------ | -------- |
    | deploy/configure new VM | 7 days   | 1 hour | 168x faster
    | that's like: |
    | a school year | ~180 school days | one day | 168x faster
    | earn Eagle Scout | 5 years | 11 days | 168x faster
    | a large pizza | 14 inch diameter | 65 yard diameter (6.5 1st downs) | 168x wider

- other things not even currently possible in manual way:
    - mine data about web request failures for a management infrastructure that gets approaching 1 million requests per hour; some minor automation makes it possible in 4 minutes
    - how long to look through 1 million requests manually?  how long to just count to a million?  A:  **27.7h** if you count 10 numbers per second (`1,000,000 events / count 10 per sec X (1 hr / 3600 sec)`); and, at this new-event rate, it's making more than 140 new events per second
    - by the query running in 4 min, versus the 27.7h that let's say we could do it in, we're past 400x faster:

    | What | Before (Manually) | After | Speed Increase |
    | -------- | ----------------- | ------ | -------- |
    | mine web data | 27.7 hours (1,662 min) | 4.155 minutes | 400x faster
    that's like |
    drive to GMa's | 2 hours | 18 seconds | 400x faster
    drive to Disney World | 14.5 hours | 2 min 11 sec | 400x faster
    fly to Orlando | 4 hours (w/ airport arrival time, etc.) | 36 seconds | 400x faster
    sports drink | 32 ounces | 100 gallons (nearly two 55gal drums) | 400x more
    hot fudge sundae | 6 ounces | 150 pounds | 400x bigger

- the point:  so much more interesting stuff to do -- automate everything we can so as to be able to have time for the interesting/meaningful/fun stuff!

### Computational Thinking
- what:  achieve the most things
- quick Prezi preso on [Computational Thinking](https://prezi.com/2qrarwldwhac/thinking/)
- processors can do billions of operations per second
- mindset of pushing everything to run on hardware eventually, to harness the raw power:  see how we can package up anything we need done and send it to a processor to do

### Conversation/questions
- What's up?

### The Value
We get time to do other interesting / important / currently impossible things by partnering with processors to do work, leading to:
- discoveries
- cures
- awesomer games
- new hobbies
- family time
- outdoor fun
- swimming
- boating
- By: solving hard problems once, moving on to the other interesting things in the world (or out of the world)

We can do interesting things. We can describe those actions in code, and multiply our capabilities, and do continuously bigger and better things. With the ever changing, faster compute, growing clouds, and more power available, we can do more awesome
