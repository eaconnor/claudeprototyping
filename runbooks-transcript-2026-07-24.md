# Runbooks & Headless Agent — call transcript (readable)

**Recorded:** 2026-07-24, 1:08 PM · **Duration:** 1h 26m 20s
**Participants:** Beth Connor (N-able, UX/research) · Joe Ferla (N-able, operational-maturity / partner-facing) · Lewis Pope (N-able, Head Nerd / technical strategy) · Stefanie Hammond (N-able, Head Nerd / EBR & business coaching) · Nicole Reineke (N-able, product) · Christopher Dunlop (N-able)
**Source recording:** "Runbooks and Headless Agent-20260724_140808-Meeting Recording"

> **Transcription notes.** This is a *readability pass* over the raw auto-transcript, not verbatim raw. Pure backchannel ("yeah / mhm / okay") was removed, fragmented lines were rejoined into whole turns, and clear speech-to-text errors on proper nouns were normalized: **Adlumin** (was "ad lumen/AdLumen/Blument"), **N-central** ("N Central/in central"), **N-sight** ("insight/by insight"), **N-Zo** ("Enzo/EMSO/end so"), **SOC** ("stock/sock"), **EDR** ("EDI"), **Cove**, **the 20** and **Tech Tribe** (MSP peer groups), **EBR/QBR**, **RTO/RMM/PSA/SLA/SLO**. Substance is unchanged. For provenance/hashing, cite the original recording, not this file. [CS: HIGH]

---

**Joe Ferla (0:03):** [MSPs are] hesitant because of what AI can do that they can't properly control — especially what their end users will get access to. Whenever Nicole does an AMA at Empower, I continually hear the same questions: how are we securing AI? How do we make sure people are doing the right things with it? How can I make this less of a risk for me? A good amount of MSPs still sit in that boat. That said, there are MSPs that use AI a whole lot — and weirdly, I think it's an age thing. The younger MSPs give their engineers more freedom with AI. I say age, but that might be a snap decision — come back to me on that.

**Nicole Reineke (1:15):** There's definitely a light correlation there, Joe. Not necessarily causation, but certainly correlation.

**Christopher Dunlop (1:34):** One of the big challenges over the next while, on N-able's AI journey, is the confidence-building part. There's some nicely laid-out stuff about when you set something off to run autonomously — you've got options for when it should come and ask you first. You can permission it, or empower it, to act anywhere between a level-1 and whatever-level technician.

**Joe Ferla (2:07):** The thing that cracks me up: even the AI-averse MSPs are still using tools where at their core AI or machine learning is being used heavily. EDR is table stakes now — that's machine learning. And Adlumin's goal by end of 2027 is 95–98% of tickets handled by AI. So you're averse to this, but you're letting your vendors take the risk with AI.

**Christopher Dunlop (3:01):** So they're okay with it as long as they're not the responsible ones.

**Joe Ferla (3:07):** It boils down to liability, and to their technicians / end users not being able to do something dangerous with it. They like the tool, but they don't want their folks getting access to it.

**Nicole Reineke (3:32):** So they want a transfer of liability. They're okay with it being used as long as *we're* the liable ones.

**Joe Ferla (3:40):** Yeah. The good MSPs fundamentally understand that their security posture and their business is liability acceptance at its core. They sit down with an adequate contract and an adequate scope of work. Even the "AI-averse" MSP I'm describing is a *mature* MSP — expert at saying: here's the liability I'll take, here's what I offer within my services, here's where I need liability transferred to. And the vendor takes the hit on AI, because the vendor is the AI one.

**Beth Connor (4:46):** We're in a space — IT, and Adlumin, cybersecurity things — where it's almost like you can't do them without AI anymore. Are you sensing a breaking point? Do they just not want the liability, or is there somewhere they say "I want to offer new products, and we have to figure out how to do it with guardrails, bringing them along"?

**Joe Ferla (5:22):** It gets fuzzy. Remember we were talking with Lewis about service offerings and where MSPs stop their liability. The more-averse MSPs are stricter about the liability they accept — they'll handle 60–70%, but their scope of work is so detailed that liability still falls on the end users. They provide the tools and support for the tools; they lean on something like Adlumin as the analyst-style tool, but keep a statement of work that also says "I'll have a security analyst on staff doing X, Y, Z." That usage stays within their own company.

**Beth Connor (6:49):** What's happening on the other side — the AI adopters?

**Joe Ferla (7:03):** They've adjusted to accept more of that liability, and they're expanding their tool stack — specifically toward things like Adlumin's shadow-AI detection. The heavy tool users focus on proper licensing and education. From a security perspective they use it, but it's still typically amended by something — very few of our MSPs run their own SOC. An MSP that runs its own SOC is either very large or very specialized. My favorite example of specialization: an MSP with his own SOC because he's so hyper-specialized he only works with Delta. That's his only client. His security lead is one of the earliest-adopting security people I've ever met — using AI for years, specifically for analytics. But he's a rarity. The other MSPs I know with SOCs are incredibly large.

**Beth Connor (9:25):** So if I'm Beth's tiny hospital and I have my MSP — am I hiring the MSP and they have an outside SOC?

**Joe Ferla (9:25):** More often than not you're hiring somebody who outsources but white-labels it as their own. If an MSP sells services using Adlumin, I'd have them mention they use outsourced help, but I'm not having them sell Adlumin — I'm having them sell *the MSP*, because the MSP stays the point of contact for that SOC. The end user is very rarely the contact for the SOC, unless it's a co-managed deal. At Best Hospital, you might not even be aware your MSP is using an outsourced SOC.

**Beth Connor (10:44):** That explains an Adlumin ticket I was puzzling over this week — different topic, different day. Let's talk about runbooks. If we're thinking about building something with a control plane to govern runbooks — and to set up runbooks themselves — are our customers using things like this already?

**Joe Ferla (11:12):** When you say "runbook," I hear one of two things: an incident *playbook* or an incident *runbook* — what happens when the sh** hits the fan. Almost every MSP uses them. The question is whether they get something pre-prepared *at* time of incident, or whether they sat down and built their own specialized playbooks *pre*-incident. There's a big divide. One of my conference questions to weed out the people who don't build their own: does anybody have a *paper* copy of their incident playbook? Those who do have sat down, done a tabletop at least once, walked their process — and realized "if we get hit by ransomware, we're screwed because our playbook's digital; I need a paper copy." That's maybe 30% of our client base. The other 70%, when they get hit, are *not* using a playbook they've tested — they're using the base FBI ransomware playbook, because they never had time for the other side of it. And some MSPs' playbook right now, in the event of ransomware, is "blow it up, start again" — they don't even have time to find the FBI playbook.

**Joe Ferla (13:16):** It's very variable, and there's a direct tie to *maturity*. A large MSP at low-to-medium operational maturity won't have much. Lower maturity, almost nothing. High-maturity large MSPs are the ones with playbooks. And weirdly, in the really small MSPs, low-to-high maturity is almost null — none of them have time to make the playbook. Lewis or I running a one-man shop — even *we* wouldn't have a playbook at that point.

**Nicole Reineke (14:24):** What you're saying is more important than what I was going to say. Follow-up: that's the organizational and security playbook. What about the *support* playbook — how do we deal with incidents when this customer calls? A standard operating procedure. Do you see that as something different?

**Joe Ferla (14:46):** That was going to be the second half of the playbooks I'm asking about: is there a documentation repository with *any* process or procedure, not just security incidents? When I was doing operational maturity for Head Nerds — 2024 is my last year for valuation numbers — a small single-man shop, say 250–500 devices, in the "no time, so no playbook" category, at high operational maturity is worth about 2–3×. That same MSP *with* a well-thought-out full set of playbooks (reset password, phishing, ransomware, disaster recovery…) — the valuation could jump as much as 5–10×, depending on clientele. I save those numbers to drive the point home: the MSPs with a full set of runbooks are so few and far between that their valuation is 5–10× more.

**Beth Connor (17:11):** Because they can get more contracts?

**Joe Ferla (17:12):** No — because it's easier for a *buying* MSP to take them over, and the buyer doesn't have the runbooks and doesn't want to build them.

**Nicole Reineke (17:28):** One of my theories: if we create runbook libraries extensive enough, we can actually help MSPs advance their operational maturity.

**Joe Ferla (17:41):** I can guarantee that would help MSPs — especially the smaller ones who don't have time. The ones it'd help *most* are the operationally-mature MSPs being forced away from their maturity by business ownership growing too fast. If they could come in and say "N-able, with help from people we know are tried-and-true — Lewis, Jason, Joe, Paul, Nicole — built the skeleton and guts of these playbooks (maybe not the musculature and skin), we now have 75% of our work done. We take the other 25% and make it our own." They just don't have the ability to make that 75% happen at the start.

**Christopher Dunlop (19:46):** Should we market this as an *autonomy* tool but also a *builder* tool? All the LLMs we have in place can help you build a runbook, not just a coworker. A runbook-builder portion — helping you get from point A, where you are, to point B, where you'd like to be — seems like a no-brainer if it raises MSP valuation.

**Joe Ferla (20:13):** The question becomes: for the recipes inside the developer portal, do we call those "builders" or "automation"? It's automation — it's understood the MSP takes that script and makes it their own; it won't come out-of-the-box and fit your needs. Will people copy-paste without reading? "Oh look, a ransomware playbook, thank God N-able built it, go." Yes. But the MSPs who get real value will build off it intrinsically, because of who they are. Market it as a builder tool if it helps traction — sure. The good MSPs know it's understood anyway.

**Beth Connor (21:36):** We're coming up on time — fantastic conversation. Say we're building out runbooks, we want to automate, and realistically we get to start with a handful. What would you vote onto the island for us to build first?

**Joe Ferla (22:04):** First two that come to mind. One: an **incident-response playbook specifically involving law enforcement** — a lot of MSPs don't put enough importance on outside entities coming in. The number who know to isolate the device, keep it powered on, make sure it can't talk to anyone, and leave it for the FBI is absurdly low. A playbook that includes what helps *legally* — insulating them without offering legal advice — would be great. Two: **disaster recovery — how to actually run and test a playbook, to provide proper RTOs.** So many MSPs tell me "my RTO for a server is 48 hours." That's absurd when I know you have a standby image in Cove; your RTO should be 30 minutes, with contract language covering unusual incidents. Those are the two — where MSPs have a skill/knowledge gap on something we consider intrinsic.

**Joe Ferla (24:11):** Lewis, good one for you too: if we're building a runbook repository, what would you start with? My answer was incident response where a third party like the FBI is involved, then disaster recovery.

**Lewis Pope (24:26):** There's *runbooks*, then *incident-response plans*, then *policies and guidelines* — each operates at a different level of the operational instruction set. I'll answer in the form of the evolution of questions someone asks when they realize they don't have these things. At some point in the technician's / team's / MSP's journey, they start asking: "If something happens, do we know what to do?" Or the smarter version: they're in a client review, ask about something, and realize "we don't have that covered for you — we never knew that situation could arise." Way out of field — "we never knew your facility maintenance engineers weren't actually firing up and testing your generators during your yearly DR testing." That's part of a policy/guideline and a runbook for a *preventative-maintenance* item. I put a lot of this under **demonstration of due care and due diligence.**

**Beth Connor (26:55):** So sometimes it's almost like work-chores for your policies — "did we make sure everyone has badges with no pictures on them."

**Lewis Pope (27:06):** Exactly. And there's the *interrogator* element — the agent has to ask. It's one thing to have these populate to a **predefined schema.** I did a bit of this in the tabletop-exercise agent work I was brainstorming. Early on I figured out: to maintain consistency and quality across models, I need the option of choosing the sharper models, and to be intentional with prompt pre-caching for the agent running in Bedrock. And I have to get certain things to populate to a schema. I have to create my **best-practices model — my "what good looks like."** Not just shaping it through a skill or references — there is a "what good looks like," and we need to be able to say "yes, this is it," and write it to paper. Not the "well, that's reasonable, good enough" you get from just giving an agent a skill. We want *control.*

**Lewis Pope (30:04):** The problem with letting it run loose: I can prompt "create a tabletop scenario, ask me questions," but I don't know what its thinking will look like, so I have to specify the questions — ask which client, what vertical, number of employees, regulatory concerns, what state they operate in, because that drives data-privacy law consequences. Even then, "give me an interactive HTML app to conduct the tabletop" is way up with no control — you might not get anything workable. It would be so useful if the next step were also agents.

**Lewis Pope (31:47):** On "what runbooks should we have": previously I'd have said *I need a template.* I don't know what I don't know; I need an example. I go to the 20, or Tech Tribe, or any of the many "how to run an MSP" subscription programs that cost you. That's part of the business journey — how do I figure this stuff out? It starts with "I need the cheap option," searching online for templates I can fill out myself, all "warning, not legal advice, consult your attorney" — so dense and reserved that it's not practical or useful. And you *will* need a lawyer to review it — and if they're not focused on MSP/IT regulation, they won't catch anything. So the entry points are: pay someone like the 20 or Tech Tribe for their runbooks and operations manuals; get the free version and fill it out yourself; or pay outside consultancy / a lawyer. Tons of triggering events: best practice; "I heard about an MSP that got burned and I'm scared"; my *business* insurance (not even cyber insurance) is telling me I have to. And it almost always starts with **"I need a ransomware playbook."**

**Lewis Pope (35:16):** Early thinking is "I need a ransomware playbook" — and that's it. But that's a *generic, philosophical* version of the runbook. It is not for a particular environment in a particular business. People fight you on this because it's continual maintenance overhead — the corpus is big, customized, unique per client — when what they hear all the time is "standardize, standardize." But you cannot standardize that away. In a perfect world I need a runbook for **every asset in my environment**, or at least runbooks that account for every asset, for every client.

**Beth Connor (37:14):** So arranging them by asset.

**Lewis Pope (37:24):** Right. You'll want asset priorities and a general asset collection, with runbook selection, and the ability to specify **high-value assets** — those get their own dedicated runbook because they're that important and unique.

**Beth Connor (37:59):** Would this be like the pharmacy cabinet that locks up the drugs?

**Lewis Pope (38:07):** Exactly. System goes down, you can't do the restricted-medicine disposition because of security coding, and you need to know how to do an emergency release.

**Beth Connor (38:10):** Joe told us about Delta — like the airplane.

**Lewis Pope (38:45):** It's a principle. I started out in electrical engineering but was going the civil-engineering route, and the first rule hammered into us was **"no harm to the human."** That becomes guiding — you have to ask all the compounding, knock-on questions. I don't stop at secondary effects; I go to quaternary and further. Especially when it touches a workflow in a business. You have to step back and make sure you're not saying "this is a tool a technician uses" — it's "this is something that touches a workflow in a business." It does not matter if it's pretty on the screen; what is my *deliverable*? You need the specificity — and the ability to *coach* an end user into it. Perfect world: you need the big, exploded three-/four-page runbook for your mission-critical machines running your line-of-business app, the access system for that medicine dispenser. It has to be interactive, able to ask questions about the environment, probe, and have some self-correction built in — or at least not sabotage itself with what you give it. Once you give it to an agent at the start, it's not just a suggestion anymore, so be careful.

**Lewis Pope (41:52):** It's taking someone through that journey. Not one agent knowing how to create a runbook — you'd probably also need a higher **orchestrator / job-creator** doing the high reasoning and handing off to create the smaller runbooks **according to a schema.**

**Beth Connor (42:32):** So if our team is making something with a control plane and a starter set of runbooks — say one is ransomware — it sounds like: first we need the *philosophical* ransomware runbook, a really solid "how you deal with ransomware." Then ideally some magic runbook where I take my philosophical one and say "make this work for the pharmacy cabinet, for all the iPhones, for all the printers, for my entire list of things," and there's an easy, guided way to work through that. So when there's *actual* ransomware — someone's taken over my pharmacy cabinet — I'm ready for go-time, not plugging in a generic book that may not help and could cause harm. And maybe in the moment it does something when information is missing, or anticipates.

**Lewis Pope (43:58):** That control plane is dangerously close to — this is a backlog item I don't know if we'll ever get to — one level above: another reasoning layer with access to the entire inquiry plane of data. So when you ask it to create something… for me it started as tabletop exercises, but it became "slight tweaks to the mission statement — simulate a ransomware attack against this environment and build me a top-10 remediation list." That's something you can kind of do with **N-Zo** right now. It's great, it'll find things, it'll be better than what most people have — better than what they produce when they're at the "I need a template" stage. But it can't stop there. You've got to have the schema, the **golden image** to define what it is. And you need it for the *class* of assets.

**Lewis Pope (46:30):** And it's **business operations, not just technology.** If you focus only on technology, you're putting blinders on. You're a Managed *Services* Provider — it doesn't say Managed *IT* Services Provider. You are not an MITSP. Put your IT-business-consultancy hat back on.

**Beth Connor (47:06):** So when we sell products to MSPs — headless agents, whatever — are they looking for things they can sell as extra services?

**Lewis Pope (47:07):** That's always the mission statement — however they can wrap it up to charge MRR on it, just like us. Same motivation.

**Beth Connor (47:30):** We've done research asking MSPs "if we're making runbooks, what should we make?" — and **QBR automation** keeps popping to the top. Does that make sense?

**Lewis Pope (47:49):** She's going to be joyful, and she's going to hate me for this. What we absolutely need to do — that's what anybody who understands MSP business operations always screams about. **We do not enable QBRs.** We provide a small set of evidence you can take *to* your QBRs. The best thing we offer about QBRs is **Stefanie Hammond — we need her as an agent.** Seriously. Her programs should be the **meta-schema** used to populate some of this. Add that to the knowledge dump of operational elements you can get out of Head Nerds' heads, from all the notes we've collected about any client complaint — our partners' *business* complaints, which we've been ignoring because we only look at their technical complaints. Because these runbooks are, in my mind, the **proto version of an agentic business operating system for MSPs.**

**Beth Connor (50:18):** I love that.

**Lewis Pope (50:18):** The big-bigs would take advantage of the individual runbook-agent production line — "wow, that accelerates our modernization." For them it's an efficiency tool to hand to the engineers already building this out — because half the time it's not the business answering "which template should I use," it's some poor soul who probably shouldn't have that responsibility and accountability at their level. Downstream/down-market, it's the proto-form of an agentic business operating system. All the way down to "I want to leave and start my own MSP, I'm looking for free tools" — they'll consume the low-level free tier, then move up the levels. We have people with 80 machines in our consoles running a side hustle; we don't model them, but they're exactly the ones we should be nudging and accelerating through their journey as cheaply as possible. The question is *where do we insert* — between "agentic business operating system" and "these are just runbooks."

**Beth Connor (54:11):** What we're doing is noodling: control plane, we can make it create runbooks. But there are tons of questions. You're helping me wrap my head around what actually makes a *good* runbook — what are the pieces, who needs what, which are most important, why, who uses them differently.

**Lewis Pope (54:37):** How much time do you have?

**Beth Connor (54:47):** Another half hour.

**Lewis Pope (54:55):** Let me see if Steph's free — because now that you've given me this to yank on, I was already playing around with a **Stefanie agent.** What she provides as advice and guidance is the model of what an agentic MSP-business-operating-system helper guide should look like.

**Beth Connor (55:38):** The interesting thing is we've been thinking about *technology*, but really — I'm the researcher — what *business problem* are we solving? What are we buying, how are we helping our MSPs be successful? MSP jobs are high-stress; there's a lot to do, a lot of people to take care of.

**Lewis Pope (55:47):** Business resilience. You have to get into the mind space: ~30% of the MSPs we sell to are running around like chickens with their heads cut off, stressed to hell. I've helped ones we advise — "guys, we can't make payroll this week, how can we help?" When you're at five- or eight-man shops, that happens.

**Beth Connor (56:58):** With runbooks — are you getting a sense of when it's "I need something really good quality that guides me," versus "can't I just ask Claude to do this"?

**Lewis Pope (57:28):** That's what a lot of them are doing. **Asking Claude is the new starting point** — it used to be Facebook/Reddit and a couple of free DOC/PDF templates you'd struggle to make editable. So you **can't compete against the market** — you can't compete against what any standard market AI would do with the same prompt. If it can do the same thing from the same prompt with the same information, we're still weak. **The moat is the data** — what do we have access to, what are we providing you easy access to — that's the whole point of the control plane giving agents access to all this data.

**Lewis Pope (59:14, resuming after a pause):** The data is the moat, and we have access to everything — great. But, putting on my adversarial-MSP-channel hat: every major competitor has the same advantage, the same large access to a large set of environment data. It'd be **trivial for them to do the same thing** we're talking about. A bunch of moving parts, but not a lot of *complicated* moving parts. **The data moat is short-lived** — as soon as anybody builds an agentic agent and gives it access to the data, bam, they've overcome it. So you go a step further, like you've been describing: it becomes **part of a workflow in and of itself** — not the starting/entry point, but a **curated, carefully orchestrated journey you're intelligently guided through.**

**Lewis Pope (1:00:53):** Stefanie — we're talking about headless agents generating operational runbooks: ransomware, the normal things people ask for.

**Stefanie Hammond (1:01:53):** So — we get a ransomware attack, go. What do we need to do, what are all the steps? That's what we're talking about.

**Beth Connor (1:01:56):** Right. Joe said "Stefanie's our QBR and run expert," so let's just make the party happen.

**Stefanie Hammond (1:02:03):** I may have to run upstairs — my daughter had wisdom-teeth surgery this morning and my husband's about to get home with her. But: what are we looking at for QBRs — I call them **EBRs, executive business reviews.** I don't like "QBR" because it signifies there's a *time* for it, when you actually want to focus on the *people* you want involved. It's an executive-to-executive conversation about strategy and the future.

**Beth Connor (1:02:54):** This is perfect — I was wondering why they're quarterly. I was getting signals from research that it's **not about the report**, it's about making sure all the information in the report is *available when people need it* — it's evolved into a whole new thing.

**Stefanie Hammond (1:03:17):** A good EBR, you shouldn't be looking at reports. It's forward-thinking — strategy, goals, objectives, priorities, where the business wants to go, and what the blockers are. I've sat in on good MSP EBRs sitting right beside the N-central engineer, and in one — a three-hour meeting with a nonprofit — the N-central engineer never spoke once; not one technical question came up. Going back to when I was an account manager, I'd get complaints: "we can't get the necessary reports out of N-central, so we can't do our meetings." You don't *need* a report. Why look at a report of patch/backup stuff that happened in the past? I assumed you took care of it — that's what I'm paying you for. You want to talk about **where the business is going, what technology it needs to get there, what the risks are.** That's a good EBR.

**Lewis Pope (1:04:50):** QBRs should not be an exercise in validating value *delivered.* It should be validation of **future** value.

**Stefanie Hammond (1:05:10):** You should be looking at tickets to find **future opportunities.** The only time I'll tell an MSP to bring ticket reports is a recurring event that only resolves with a hardware refresh — end-of-life asset that keeps failing. Then you show the root cause: "we can keep charging you to maintain this outdated system, or here's a refresh plan." Other than that, you don't need reports — unless risk reports, like a risk summary showing you've gone from a B to an A. But backup-status and patch reports? "We caught these ransomware events" — good, that's what I'm paying you for.

**Lewis Pope (1:06:41):** You don't need those for the QBR — but you *need* them. That's your **evidence** for when you answer an auditor's question, or prove something to a cyber-insurance underwriter. Compliance evidence. We may be getting too deep, but it's an undercurrent that affects the MSP somehow.

**Beth Connor (1:07:42):** So there's a part where I need evidence — like a basketball team's stats — deep stuff so we can figure things out. But I'm *not* going to automate that into a report and go "hello business, look at all the work I did." That's not how you do that meeting.

**Lewis Pope (1:08:12):** Right. That polished deliverable is just the monthly reminder — "don't you love us, aren't you glad we do these things, don't forget to cut the check." That's the report people scream for. Most MSPs haven't reached the level of asking for these reports for **forensic auditability** — they ask for them to **prove the value of the service they sold.** The QBR devolves, or never evolves.

**Stefanie Hammond (1:09:06):** You should be able to build **pipeline** from it — customer churn reduction, solidification of client relationships.

**Lewis Pope (1:09:14):** So you don't rely on those proof-of-value reports you should be sending monthly as part of automation. You have to break people out of relying on them in a QBR. Isn't that one of the first things you teach them?

**Stefanie Hammond (1:09:45):** The whole problem with the MSP industry: they're run by techies, but their natural business client is non-technical. So it's teaching MSPs to **let go of the tech** — speak the love language of CEOs, CFOs, COOs. Showing a CEO graphs and percentages means nothing unless you tell me how it impacts my business, what I need to do to improve it. A bunch of pie charts with no context — especially about the past — isn't useful.

**Beth Connor (1:10:35):** So our research asked "if we're making runbooks, what should we make?" and **QBRs were top of the list.** Why do you think that is?

**Stefanie Hammond (1:10:45):** Because they're approaching it from a **technical standpoint.** I deliver a whole boot camp on EBRs — I did a session at Empower with MSPs doing really well with them. I have a template I send out. One MSP who spoke at Empower turned his whole business around: he used to call them *technical* business reviews; now he's fully on executive business reviews and constantly builds pipeline — new projects, new initiatives — each time he sits with a client, because he re-centered what the EBR is about. It's not a technical checkup. 99% of MSP owners are techies; they want to attack it technically, and I keep reminding them: **you're not talking to technical people.** If they're looking for runbooks, awesome — I have lots of material, a webinar video, and a template. But they want to know **how to actually deliver one.** That's probably why they're asking for a runbook on it.

**Lewis Pope (1:13:04):** It won't be a single runbook, though — it's the question you ask before you realize it's a dumb question. You realize what you thought was *this* big is actually something that **spans the entirety of how you run your business.**

**Stefanie Hammond (1:13:33):** A lot of it is sales, marketing, and customer relationships.

**Lewis Pope (1:13:38):** How does your RMM produce tickets going into a PSA, and what are you doing with that PSA data — is it driving your SLA/SLO tracking? It's huge.

**Beth Connor (1:14:02):** So if we made something like "here's data — let's work on translating this into a story, and what it means."

**Stefanie Hammond (1:14:39):** You want the data to **uncover opportunities, risks, gaps, deficiencies** — because that's what sells, that's how you find new project work. There's so much data being collected — Adlumin, N-central, N-sight, analytics. MSPs want to get that out on a particular client and say: where are the gaps, holes, risks, deficiencies, opportunities? What should I talk to them about in their next EBR? A big part of a QBR is the **risk register** — what has to go on it, because that's the cover-your-ass. "Here are all the risks, we have to prioritize and reduce them because your business will be impacted." A lot of that becomes a project — it costs money — so you prioritize spend. And it becomes your running pipeline: "we dealt with this one, it's mitigated, it falls off — what else is on the register?" We were just talking about **AI readiness** — if MSPs want to deliver AI services, the risk register is a big component around **shadow AI.** Now that N-central and Adlumin have shadow-AI monitoring, it's easy for an MSP to say in an EBR: "Are you using AI today?" "No, not at all." "Your employees are — here's what we found. Maybe we should put guardrails in place." And that's your entry to AI services.

**Lewis Pope (1:17:05):** That's the other side of the tabletop-exercise coin. To build a good tabletop exercise relevant to the environment — one you'd charge $3–10K to conduct — you have to do the work. It produces the **evidence you need for regulatory and compliance concerns.** "Yes, we tested our incident-response plan." How do you test it? A drill — a tabletop exercise. Using that (temporary) data moat, you build a **high-fidelity** exercise that takes them through the *whole* business — not just ransomware on the endpoint, but "do you know who to call at the state level to report this? Do you know you have a 72-hour window?" Then you **flip it**: the agents touching it become **adversarial — pen testers** — looking for the deficiencies and gaps Stefanie's talking about. "What could I as an attacker take advantage of? Where are you not looking?"

**Beth Connor (1:19:26):** These games have the same DNA.

**Lewis Pope (1:19:32):** Yes — it becomes **tabletop-exercise recurring revenue.** But it's only as good as the platform and service delivery built around it — that's a major platform thing, not just the agents. Then you flip it and they're part of your compliance and security: it's a **business pen test, not purely an IT pen test.** IT pen testing has been beaten like a dead horse — the SEO, the market share, it's the same story told over and over, targeted at the infrastructure. Back it out to the entire business. There's a spectrum — MSPs, MSSPs, master MSPs. The MSP-to-MSP majority is where the need is greatest: they're having the transition from technology to business — what Stefanie coaches — and that's where they're asking for help. If this gives them that full business-coach / advisory / consultancy backup, that's it.

**Lewis Pope (1:22:32):** You'd need agents that build to a schema — orchestrator down to a sub-agent whose only job is building to a schema. Another sub-agent type is a **reasoning agent** for certain questions. And you'd need a **Stefanie sub-agent, a Lewis sub-agent.** We won't actually train and weight models, but there's a **corpus of knowledge we can produce** — the guidelines, everything Stefanie has — that gets extracted into that sub-agent's operational guidelines, its tensions, everything defined.

**Beth Connor (1:23:51):** This makes so much sense. I'll talk to both of you more as we build this — thank you both, I feel so much smarter now, and the team will be too.

**Stefanie Hammond (1:24:04):** I'll send links to my EBR training videos and the Excel template I use. It'd be awesome if there's a way to take that template and show MSPs "here's how you use AI to populate this for you" — because in the beginning it takes a lot of time.

**Lewis Pope (1:24:39):** That template *is* the schema for one of those sub-agents to build to. Exactly what the final agent assembly would do: **build to a schema derived from Stefanie's template.** Because that's what the MSP would ask: "Can I just ask the AI to give it to me?" Yes — here.

**Stefanie Hammond (1:25:15):** We have a great partner, Mark Umstead of Plus One Technology in Pennsylvania — he's all over using AI in sales and marketing, sent me samples on using AI for his account-management meetings. Probably the only MSP really doing this. That's what I'd love to do with my stuff, with people smarter than me. Does this replace our 11:00?

**Beth Connor (1:25:59):** This replaces our 11:00.

**Stefanie Hammond (1:26:01):** I'll get that information over to you — throw anything in my calendar, happy to keep talking. I'm passionate about EBRs.

**Beth Connor (1:26:17):** Thank you both. Bye.

*Transcription ended.*
