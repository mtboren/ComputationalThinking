# Intro: Managing Configuration, and using Ansible to do so
Some things to help get someone up to speed with Configuration Management ideas, and some information about using the open source tool [Ansible](https://www.ansible.com/) for it

Contents:
- [Desired State](#Desired-State)
- [Make it so (if not already so) -- Idempotent](#Make-it-so-(if-not-already-so)----Idempotent)
- [Using Ansible](#Using-Ansible)

## Desired State
As we move from "write scripts that sequentially run commands" to "ensure settings are as we want them", we are shifting focus from "how to do things" to "expected state of things". Less about how to execute a command or two, and more about the desired state in which the targets are.  Less about remote execution, and more about versionable, shareable, re-usable configuration descipitions.

## Make it so (if not already so)
With this move to describing and ensuring desired states of systems, we also adapt our style of implementing configuration updates / changes. We will make it so, but only if it is not already so.  That is, we will be sure to first check if things are already in the state that we desire, to understand if we even need to take action.

## Using Ansible
We can embrace the notion of idempotent-like behavior as we use Ansible (or most configuration management tools, like Chef, Puppet, CloudFormation, etc.). We should write our tasks in our playbooks (collection of tasks) such that using a playbook results in a target that is in the same state whether we run the play book one time or one hundred times.

Further, we can maximize efficiency of playbook runs by having tasks that:

1) check whether the target is in the desired state for the given configuration item
1) take action to update the state of the target _only_ if the target's current state does not already match the desired state

Granted, there can be a bit more work involved to compose things in this manner (test state first, update state if not already in desired state), but by doing so, we are then able to ensure the current state is the desired state with the least amount of rework, and at any time we need or want.

And, great news: many (most?) of the in-built Ansible modules are written to behave is this idempotent way. So, we can leverage such practices right out of the gate! We just want to be sure to incorporate such things into any custom code that we need to write (test, _then_ set, but only if needed).

### Example:
We want a Windows VM to have three agents installed, two new registry keys created with new values (name/data pairs), a new directory at the root of the system drive, and boot configuration data configuration that specifies the timeout before which boot manager selects the default entry

#### "Old" Way:

Write a script that:
- calls three `setup.exe` installers for the agents
- creates new registry keys and some values therein
- creates `C:\Temp`
- issues the command `bcdedit.exe /timeout 5`

Results:
- result the first time: agents are installed, registry items are all there, we created `C:\Temp`, and the boot config data is as we want
- result on subsequent runs: errors for each of the agent installs

Cons:
- we can only use this code on a machine that has none of the agents, registry keys, folders already present. The code was good / useful _only_ when the target has zero of the desired items already configured on it

#### In an Idempotent Way:

Write a playbook with tasks that:
- ensures the presence of the three software agents, installing each one that is not already there, if any
- ensures that all registry keys and their value name/data pairs are present, creating only those that are not already present, if any
- ensures that `C:\Temp` exists -- if it is there, take no action; else, create it
- update the boot configuration data for `timeout` only if it is not already at a value of `5`

Pros:
- Can run as often and as many times as we want/need to ensure that the target machine is in the desired state
- If the target state already matches the desired state, no action required
- If there is _any_ configuration drift between runs, the next run will bring the given attribute back to the desired state

We can, of course (and maybe already have to varying degrees), write our scripts in an idempotent way, but that has not traditionally been the way. As we move to more configuration management and less "run some script", we will be sure to change state _only_ if current state differs from desired state.