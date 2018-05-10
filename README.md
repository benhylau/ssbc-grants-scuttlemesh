# SSBC grant for RPi ScuttleMesh workshop

This is the repository for organizing work and funds distribution from a [SSBC grant](https://github.com/ssbc/grants-process/blob/master/grants.md) I received for the _RPi ScuttleMesh workshop_ proposal in the May 2018 grant cycle. The goal is to complete all deliverables over a 2-month period, meanwhile allowing multiple contributors to share this grant via a distribution method inspired by [Gratipay's take-what-you-want](https://opensource.com/open-organization/16/7/compensating-employees-letting-them-take-what-they-want) model.

## Background

I found out about monthly grants by the [Secure Scuttlebutt Consortium](https://github.com/ssbc) a few days before the deadline for the May 2018 cycle, and realized that some of what I have planned to do for [Toronto Mesh](https://tomesh.net)'s [Building the Peer-to-Peer Internet workshop](https://github.com/tomeshnet/p2p-internet-workshop/) could be in scope for this grant... so I made a proposal with [Patchwork](https://github.com/ssbc/patchwork), which you can view on Patchwork using this _Message ID_ `%40V5F5SHwxe5NNFCCP6pL0e+8rlik5xY5QUZYQlcnww=.sha256`, or [via a ssb-viewer like heropunch.io](https://viewer.heropunch.io/%40V5F5SHwxe5NNFCCP6pL0e+8rlik5xY5QUZYQlcnww=.sha256).

It turns out a lot of people in the community are also excited about having SSB running on a Raspberry Pi connected to a mesh network and the educational focus of the proposal :) Lots of nice discussions followed throughout the next week, many people offered advice and we better scoped the proposal with the following deliverables:

>* A mesh-orange ramdisk release (this exists now for workshop) and also a non-ramdisk release (needed for a persistent node that won't reset on power cycle, this requires some work on mesh-orange)
>* A docker archive running sbot and whatever service is needed to facilitate follows and interact with sbot from the web client
>* Worksheet and modification of first module activity to base on sbot / patchwork
>* A proper course website hosted on GitHub Pages (now presentations and generated PDF assets are on there but with no landing page, the mesh-orange images and node configs are in separate repos, it would be hard for someone to piece everything together to run this workshop, a website would help a lot to navigate)

Eventually _RPi ScuttleMesh workshop_ was selected by [@staltz](https://github.com/staltz), the adjudicator for this round, as one of the three accepted proposals for the May 2018 grant cycle, and I am of course super grateful for this opportunity! You can find the announcement at `%CnkbBEjaoorBhCkimLQGjDyc2k9xYTM+7osj5VEPZ9s=.sha256` and more information about the grant at `%Qmj97E3/i5EEp2c1rg/0sj5eaJP3YB682rJTvRWuvB0=.sha256`.

## Work plan

I have translated the above deliverables into _GitHub Issues_ spread across a couple repositories. They are tagged with `ssbc`, which means these tasks are in-scope for the grant:

* https://github.com/tomeshnet/mesh-orange/issues?q=is%3Aopen+is%3Aissue+label%3Assbc
* https://github.com/tomeshnet/p2p-internet-workshop/issues?q=is%3Aopen+is%3Aissue+label%3Assbc
* https://github.com/benhylau/ssbc-grants-scuttlemesh/issues?q=is%3Aopen+is%3Aissue+label%3Assbc

Of course things could change along the way, some tasks may lead to dead ends and new tasks may be added, but this is where we can start. If you decide to work on a task, please assign it to yourself so no one else works on it in parallel.

## Funds distribution

The grant money is paid in ETH and held at this address which only I have access to:

>[0xc005018f06E328c145331C1b17a03Aba4d7D7E8c](https://etherscan.io/address/0xc005018f06E328c145331C1b17a03Aba4d7D7E8c)

I would like to share this grant with other contributors via a _take-what-you-want_ model, which I have been curious about and this seems like the perfect opportunity to try it out. Participation will be limited to existing active contributors [@tomeshnet](https://github.com/tomeshnet), and to participate in this little social experiment you need to send a _Pull Request_ to [take.md](take.md) in this repository and add your _GitHub Handle_ and _ETH Address_ like such:

| GitHub Handle | ETH Address                                  | May 26 | Jun 9 | Jun 23 | Jul 7 |
|:-------------:|:--------------------------------------------:|:------:|:-----:|:------:|:-----:|
| @benhylau     | `0xYOUR_ETHEREUM_ADDRESS_MAKE_SURE_ITS_GOOD` |        |       |        |       |

Once I merge your Pull Request, you are officially eligible to receive funds!

On each date in that table, you can send a Pull Request titled like `May 26 Take Request` to indicate how much you want to take from the pool in units of ETH, for example:

| GitHub Handle | ETH Address                                  | May 26 | Jun 9 | Jun 23 | Jul 7 |
|:-------------:|:--------------------------------------------:|:------:|:-----:|:------:|:-----:|
| @benhylau     | `0xYOUR_ETHEREUM_ADDRESS_MAKE_SURE_ITS_GOOD` | 0.35   |       |        |       |

In the Pull Request description, indicate what you have done over the 2-week period prior (i.e. between May 14-26 for the first cycle), so other collaborators can be reminded of what you worked on and it will help me compile a _Dev Diary_ entry at `%+KCgwY3T/qEXktQkNQFM7qzNnKMbPq7KRkG4UmDJ8XI=.sha256` for the SSBC grant ;)

Mention the GitHub Issues with the `ssbc` tag, but you can also bring up things like... "helped @benhylau debug his jekyll environment" because I was unable to code review the website with a broken toolchain, as an example. Once your _Take Request_ gets two `+1`'s from other collaborators on the list, @benhylau will send you the requested amount to the address and merge your Pull Request.

You are also responsible for looking at other people's Take Request, and comment if you think it is unreasonable (whether you feel they should take more or less), then hopefully we can adjust the amount where everyone is happy the same way we do in a code review. Otherwise the only hard restriction is, no one may take more than 1/4 of the entire grant in a single cycle.

This is quite different from Gratipay's model. I think the modifications make it suitable for distributing a one-time grant like this, while keeping the beneficial elements of a take-what-you-want model. Having open and consensus-based salary information allow mismatch of expectations to surface, make it difficult for gender or other biases to exist, and not assigning a price tag to each task (i.e. the bounty model) incentivizes people to spend time on difficult-to-quantify tasks (e.g. helping @benhylau fix his jekyll environment) and take more interest in each other's work.

I would like to thank SSBC for this grant, and am looking forward to start ScuttleMesh and this experiment on May 14! If you are from Toronto Mesh and want to participate, send the Pull Request now! Or if you have questions/suggestions let's chat in: [#funding:tomesh.net](https://chat.tomesh.net/#/room/#funding:tomesh.net)
