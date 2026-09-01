# Source: Lewis Pope — "EBRs, getting the details right" (working session)

SOURCE: Teams meeting recording transcript, "EBRs -- getting details right", 2026-08-25 1:19PM, 50m26s
ORIGINAL FILE: /Users/bethconnor/Downloads/EBRs -- getting details right.docx (dropped by Beth 2026-08-27; referred to as "notes from head nerd")
ATTENDEES: Beth Connor · Lewis Pope (N-able; personas/MSP-vocabulary, tabletop/GRC) · Christopher Dunlop (N-able; harness/ACP)
CS_BASE: [CS: VERIFIED] — primary source, working session recorded by Beth. Design-direction material, not validated user research.
FILED-BY: Claude (orchestrator), preserved per CLAUDE.md scout discipline so it cannot die in the context window.

## Load-bearing points for the EBR coworker build (ebr-coworker-005-arc)

1. The EBR deliverable IS a living risk register — "the consistent living, breathing artifact." Everything is a finding; every finding needs an owner + accountability. The DB underneath should be a risk register. (0:43–3:37)
2. Two views of the same risk-register data: (a) trend/improvement over time, (b) the "gaps you are not paying us to deal with" list. Same data, switch the view to match the MSP sales motion. (1:57–2:55)
3. Tabletop (TTX) feeds the EBR: the tabletop coworker produces an after-action report → demonstrates due care/diligence, IR/BCP testing artifacts → into the risk register. Run TTX ~1 month before the EBR. TTX = business-wide audit; EBR = executive review of the proven gaps. (3:46–7:44)
4. Everything is an ingredient — each coworker output should pass off to the EBR, AND each component must be able to "fly solo." Directly supports full-report-OR-do-part. (4:53–8:45)
5. History cannot be lost — per-client trend over time required for attestation/compliance/legal. Assume our system is a system of record. "Across from opposing counsel: prove it." Keep the evidence, do not shave data lean. (11:07–14:09)
6. Reasoning/evidence trail required — "how these numbers were derived." Data traceability is the insurance policy; never ship AI synthesis without trace-back to raw data. (14:35–15:21)
7. Three aggregation levels: client trend → MSP whole estate → anonymized cross-MSP benchmark ("what good looks like," KPI means/spreads) as starting points, not a blank slate. (10:54–19:15)
8. User range + handholding: "spit a baseline, I fine-tune 45 min" (on-top-of-it) … "machine just do it, take my money" … most in between. ~50% will be lost ("what does this mean, how do I operationalize this?") → a premium translation/handholding coworker (deep-reasoning, charged premium). Persona ≠ seat ≠ archetype; archetypes (preference/emotion/soft-skills) throw the wrench — design for the human factor. (19:44–24:31)
9. Unstructured-data interview step: some answers cannot come via API/docs — client-business questions needing soft-skill engagement. Coworker generates a client interview, MSP approves, secure portal link sent, client populates, next coworker picks it up. Do not leave the MSP to gather it. (24:31–26:22)
10. Harness = open book (Dunlop): turn up a runbook, attach data sources via MCP/ACP, build a coworker as a non-deterministic flow that, once set, steps through the same way every time. Graph/drag-drop editing of backend config. IP lives in the runbooks. Open by default — "you don't know what it does, so why would you trust it?" Comes out of the labour budget → start supervised, build autonomy tolerance slowly. (28:18–32:34)
11. Clone & instance model: everything is a versioned building block; clone a coworker, run with your own credentials; pinning/non-pinning versions (auto-update vs. prompt). (33:47–35:00)
12. Off-ramps/in-ramps mid-process: runbooks modular/resilient — split the flow, add inputs/outputs, close back together without catastrophe. "Modularity without building in modules." (32:34–36:23)
13. Data normalization = part of schema matching, handled by the pulling agents. (36:23–end)

---

## Full transcript

EBRs -- getting details right-20260825_141914-Meeting Recording
August 25, 2026, 1:19PM
50m 26s
 Elizabeth Connor started transcription
 Lewis Pope   0:04 And that can take the lens of being something that's just like a kind of what I'm trying to do right now inside of Vertizia is I'm trying to do what I can with the vulnerability enumeration because we can't get a full software. asset list through GraphQL. I can get it through via API, but I'm trying not to go to do that yet. I'm trying to keep it only through what's through GraphQL. But yeah, that's one of the things I'm having to do right now in my tabletop. One is, all right, give me a list.
 Elizabeth Connor   0:42 Okay. Okay.
 Lewis Pope   0:43 of the applications installed. I'm cheating a little bit.
 Elizabeth Connor   0:46 Okay.
 Lewis Pope   0:49 But for me, it's great because I'm populating software applications in the environment that have a CVE associated with it. That's a step of association I don't have to do.
 Elizabeth Connor   0:58 Okay.
 Lewis Pope   1:05 And I don't have to spend my time and my effort making those correlations elsewhere, but I can get that. That would be something that should be in here, because those should be.
 Elizabeth Connor   1:14 Okay.
 Lewis Pope   1:16 Part of what this EBR, the deliverable, the consistent living, breathing artifact that comes out of this should be the risk register.
 Elizabeth Connor   1:29 Okay.
 Lewis Pope   1:30 There should be a... a, there should be a, and I'm getting kind of outside and I'm jumping ahead a few steps, but.
 Elizabeth Connor   1:34 Yeah.
 Lewis Pope   1:42 In the end for me, it's like, oh no, I need a console that has all of these findings in it and all of these findings are tracked and, you know, over time they're taking, you're going to have them.
 Elizabeth Connor   1:46 Yeah. Yeah. Oh yeah, let me grab.
 Lewis Pope   1:57 Um... And that that would be one of the things that's in there is you have all of these vulnerabilities in your environment. We are taking account, we either one, I'm showing you trend data over time, how we're knocking these things out and improving your environment over time, or it's the risk graduate saying, hey, these are all the things that are wrong that you are not paying us to deal with.
 Elizabeth Connor   2:23 Okay.
 Lewis Pope   2:24 I need it to serve both of those purposes, because depending on my, there could be, from our point of view, there could be absolutely no difference between one MSP and another, and they would have that drastic of an expectation and a need, just because that's the way their workflows and sales motions are set up.
 Elizabeth Connor   2:45 Yeah.
 Lewis Pope   2:45 They may decide they want to approach it. Same problem, same task, slightly different views on it. So that would just be like, no, okay, fine, we got the data, change the view.
 Elizabeth Connor   2:55 Yeah, okay. Yeah, I was making up, I think that's the, so yeah, so this, whatever I was making here, this was like a very rudimentary, what would we need? But this really should be a risk register to be like, hey.
 Lewis Pope   3:09 Yeah, the, the, yeah, the underneath it, the tracking mechanism and everything, and the database underneath it really should be a risk register.
 Elizabeth Connor   3:12 Yeah. Yeah. Okay, that's...
 Lewis Pope   3:21 I think that's the best way to approach it because everything is a finding and every finding has to be accounted for and somebody needs to be assigned responsibility and accountability for every finding that is uncovered. Everything this is doing is findings.
 Elizabeth Connor   3:24 Yeah. Yeah.
 Lewis Pope   3:37 And selfishly, not selfishly, just trying to connect the dots and everything, this becomes a foundational.
 Elizabeth Connor   3:38 Yeah.
 Lewis Pope   3:46 Um... This would become foundational and having a risk register living here would be something that would be fed into and updated by the tabletop exercise. Because this would be the automated findings. That's what we want it to do. We want it to do the automated findings and everything and correlate and populate and do what it's going to do for us.
 Elizabeth Connor   4:01 Okay, okay. Yeah. Mm-hmm.
 Lewis Pope   4:14 The tabletop coworker and what it produces would come back into here as, oh, here is the after action report and the notations and the observations of this exercise. Therefore, I have now demonstrated due care due diligence and I have
 Elizabeth Connor   4:19 Yeah.
 Lewis Pope   4:35 artifacts that represent my required testing of my instant response plans and my business continuity plans. That is what comes out of performing the exercise and we are just making it stupid simple.
 Elizabeth Connor   4:45 Yeah. Yeah.
 Lewis Pope   4:53 to be a get it connected and then after you get it connected, yes, this, these are every one of these that we're building out here in this, every single one of those use cases. I think it would be helpful if everybody internally keeps a mind of how do I pass off the end results of this to something else.
 Elizabeth Connor   5:05 Yeah. And it should, most of them should pass it off to EBR. Or it's like, yeah.
 Lewis Pope   5:16 And it should. Right, right, right. They should be, yeah, they should be being passed off to the EBR. It should be made available for it. It could be, maybe it doesn't get to the EBR initially. Maybe it's like out of my tabletop. I'm doing my tabletop as friend findings over time as one of my sub databases.
 Elizabeth Connor   5:24 Yeah. Yeah.
 Lewis Pope   5:36 that I'm running. And that would be a great resource to go into the QBR, EBR, because that would be point in time now plus previous improvement and findings. And we found this three years ago. We accepted the risk of it here.
 Elizabeth Connor   5:37 Have.
 Lewis Pope   5:55 the next year. The next year, you deferred the risk again. And now this year, we're in a situation of it's going to impact your insurance renewal because your insurance underwriter just said, no, explicitly you happened. So I've been warning you for four years, five years, and I have the trail. Here we go.
 Elizabeth Connor   6:05 Yeah. Yeah, okay, that makes sense. And then EBR needs to be the one that does the good job to be like, okay, so you need to do, this is something here, this is a risk, we recommend this, you know, if you need, if you, and this is how we sell you more services and do a good job of.
 Lewis Pope   6:26 Yeah. Yeah, and the table, yeah, and the table tops and like kind of like in the order of operations, you would probably want to run the table top a good month prior to the EBR or within that time frame of an EBR, because the EBR is going to be with executive business review.
 Elizabeth Connor   6:32 Yeah. Mhm. Okay.
 Lewis Pope   6:52 The tabletop is business-wide. So you get the business-wide audit completed through the TTX, or at least the things that you want to particularly focus on for this season, because that's your sales motion, your campaign,
 Elizabeth Connor   6:53 Mhm. Okay.
 Lewis Pope   7:14 the industry that the vertical you're in, the regulation dropped, and you know you've got to get people primed and ahead for it, whatever it may be. You would. prove out why that is important and why they have to do it through the TTX.
 Elizabeth Connor   7:30 Yeah.
 Lewis Pope   7:31 And then the EBR is the executive business review of, hey, we proved it out, we demonstrated it, you sucked, you failed. This is a, you know, we've demonstrated now you have this gap.
 Elizabeth Connor   7:43 Yeah.
 Lewis Pope   7:44 Now, risk register acceptance there in the QBR. Are we going to implement what came out of the after action report of the tabletop engagement? That would be something else that would be presented during an EBR.
 Elizabeth Connor   7:59 Okay.
 Lewis Pope   8:01 Or it could be, or they could be separate things. That's the...
 Elizabeth Connor   8:02 Yeah. Yeah. Yeah, but it's like, it's almost like thinking of all the things that can be ingredients. Yeah, and I was...
 Lewis Pope   8:13 And the thing is, is they can all be ingredients, every last one of them, because the EBR that I'm going to have with a small medical practice is going to be different than the EBR I'm going to have with the chiropractor that's going to be different than the EBR that I have with the grain elevator.
 Elizabeth Connor   8:22 Yeah.
 Lewis Pope   8:34 I mean, it's each one of them is going to be different. There is the commonalities to it. And I mean, that's what we're building the schemas and everything for.
 Elizabeth Connor   8:34 Yes, yeah. Ohh.
 Lewis Pope   8:45 But that final form and which component of this you want also has to be able to fly solo.
 Elizabeth Connor   8:53 That makes sense to me. I remember I was at AT&T and we did MSP research, like this big study, and we were, one of the things that stuck out so much is that, you know, giant quant study, and we're just like, how are, what's the pattern of MSPs? Like, how do they cluster into groups? And we realized they were.
 Lewis Pope   8:58 Okay.
 Elizabeth Connor   9:11 They kept telling us they were all special snowflakes and we're like, you are. Every business is unique. Everything does have a different setup. There are some very, there are some patterns, but it was just like flexibility mattered so much.
 Lewis Pope   9:24 Yeah, yeah, and that's the reason why I have my side project of personas and MSP vocabulary that's already at like 8,000 data points.
 Elizabeth Connor   9:34 Yeah, for using your personas, I put them in my UXMD file for hardness.
 Lewis Pope   9:39 That's good. I've got the updated version of that one coming. That's going to be even, my end goal is to give you a graph, a knowledge graph and a navigable relationship plus giving it to an agent.
 Elizabeth Connor   9:42 Oh yeah! Yeah.
 Lewis Pope   9:55 as a corpus, which could be another.
 Elizabeth Connor   9:57 K.
 Lewis Pope   10:00 understanding element for us here of whenever we have to have any conversational elements that could be useful for personalizing the engagement.
 Elizabeth Connor   10:12 That's a that's a good call. This is, you know, yeah, even basics of like, how do we talk to an owner versus how do we talk to a CTO? Those are two different conversations.
 Lewis Pope   10:16 Does that so?
 Christopher Dunlop   10:17 Yeah.
 Lewis Pope   10:25 Yeah, I'm trying, I'm trying to capture that in there.
 Elizabeth Connor   10:28 That's love this all. Okay, I'm still trying to wrap my head around this. You know, it's just, it's, you know, it's almost like when we're in a, like in, we're in an EBR, QBR. Do we need to set it up to compare? And like, what would the comparisons be like over time, what we recommended last time?
 Lewis Pope   10:31 Um...
 Elizabeth Connor   10:51 to something that's like a golden tenant. Like how, like how do we think about stuff like this?
 Lewis Pope   10:54 Yeah, it's... So I would say there needs to be aggregation and synthesis at a couple of different levels.
 Elizabeth Connor   11:07 Okay.
 Lewis Pope   11:08 One, there is the trend over time. The historical knowledge of this customer must be available and cannot be lost. We need that for one, for this to work better in the end, but two also is if any of this is going to become part of attestation or is going to become part of proving compliance or that we were doing what we were supposed to do, we need the history. So I need trend data of a client over time. What I did for them two years ago cannot disappear.
 Elizabeth Connor   11:30 King. Okay. Hey. Okay, so...
 Lewis Pope   11:44 So the EBR results and some of the evidence that powered it. Will need to be preserved. I don't that where line.
 Elizabeth Connor   11:52 Yeah. Yeah.
 Lewis Pope   11:57 For me, yeah, for me, I'm always more about, yeah, screw your cost and your cogs, keep everything.
 Elizabeth Connor   12:04 Yeah, but...
 Lewis Pope   12:04 Make them pay, make them pay extra for it. But I mean, that's getting us back to the big data challenges of keep everything. We'll never know when we might use it.
 Elizabeth Connor   12:07 Yeah. Yeah.
 Lewis Pope   12:17 So, yeah.
 Elizabeth Connor   12:17 But then also we can be sued for it too. I used to work in hospitals. But there's, but it's also, I think, just for us, the assumption that our system could be a system of record is a good assumption to make. Like people, okay.
 Lewis Pope   12:33 Yeah, yeah, yeah, because another thing, the GRC plays that we're working on, I've been working on the GRC stuff, and that is my one gripe is that everybody is trying to shave data too lean.
 Elizabeth Connor   12:49 Yeah.
 Lewis Pope   12:51 And it breaks that, well, that's nice, but this can't be a GRC solution anymore. This is a reporting mechanism, not an attestation mechanism, because you're not keeping the evidence.
 Elizabeth Connor   13:04 Okay, yeah. Yeah.
 Lewis Pope   13:09 Long enough, or you're not, yeah, there, you know, you can aggregate data and roll up data over time periods and stuff like that, but you just have to, there's just the... If I am sitting across from opposing counsel, I do not want them to rip me a new one because I can't prove that I had MFA enabled on a user account and a workstation at this time.
 Elizabeth Connor   13:35 Yeah.
 Lewis Pope   13:36 That's the, you got to be able to do that. If you can't back me up in that situation, then I can't use you as a GRC solution.
 Elizabeth Connor   13:39 Yeah. Yeah. Okay.
 Lewis Pope   13:48 So that's kind of over top of all of this and everything, but it is that the opposing counsel says prove it.
 Elizabeth Connor   13:53 Mm-mm. Yeah. And that's.
 Lewis Pope   14:01 And I mean, that's a little aggressive in the deep end for it, but that's the, I mean, security and compliance. So compliance is what gets you across from an auditor or somebody else that's able to make you pay for it.
 Elizabeth Connor   14:09 Mm. Yeah, and to me, this also feels like it can be our insurance policy too, because if I can make data traceability and I can be like, okay, here's your coworker, coworker is synthesizing like this, but I'm going to give you as a user at an MSP a way to go and trace data. Data easily.
 Lewis Pope   14:35 I need to know the reasoning. I need to know, I need to know, I need the evidence and I need the reasoning trail or the reasoning track on it. It doesn't need to be the full verbatim reasoning track, but it needs to be that this is how these numbers were derived. This is how these estimates were derived.
 Elizabeth Connor   14:37 Yeah. Yeah. Yeah, and it's... Yeah. Because I'm a data person, so it's like, I always feel like with the data, I mean, we can get pretty good with data, but we're always making assumptions and interpretations of data. And being, we end up back in data, in raw data more often than we think we should, because, you know, we didn't know what to look for or we didn't.
 Lewis Pope   15:15 Yeah.
 Elizabeth Connor   15:17 There was something and it's, yeah. And we can't just give AI synthesis that will kill us in a product.
 Lewis Pope   15:21 The. And that need to go back into the data. That's a bigger thing in this whole project is because... Gather once, let an agent process that he gets results, then it can go and become part of another process, another workflow, and we're gonna, it's a compounding thing, but it's for us, our efficiencies, so that we're only having to spend.
 Elizabeth Connor   15:54 Yeah.
 Lewis Pope   15:57 as few tokens as possible to get the end result out. So there will be as much as easy and as nice as it is for all of this to be like individuals that hand stuff back out once they're done with it. There's kind of be like a global data map over everything that's being done in here of so you.
 Elizabeth Connor   16:02 Yeah. Yeah.
 Lewis Pope   16:20 If somebody's already deriving or synthesizing off of a certain set of data, why not just reuse that one instead of having to cook your own? And then there's five different inferences. We wind up with five different inference models running against the same type of data coming out with different types of results.
 Elizabeth Connor   16:38 Yeah, I also assume if we have data, then we can leverage the fact that we might be able to see trends among people and we could be like, oh yeah, everyone in all, people are attacking dental practices right now. What's going on? We don't know.
 Lewis Pope   16:50 Right, right, right. Right, and we need to be able to, yeah, and that's part of that roll up. It needs to be, I need trend data over time for a client. I need trend data over my estate for all of my clients. And that can be my internal comparison mechanism. But then above that will be another layer we need to give.
 Elizabeth Connor   17:07 Okay.
 Lewis Pope   17:15 the user vision vision up into anonymized benchmark data that we're seeing full and raw down from the top because of, you know, our account being over top. And then that becomes a
 Elizabeth Connor   17:23 Yeah.
 Lewis Pope   17:35 Opportunity to plug in to verify, subsume, replace, augment, whatever we... have out of the MSP data benchmarking that we were already doing that Will Burn had been doing, I think.
 Elizabeth Connor   17:57 Oh, okay.
 Lewis Pope   17:59 So that is a part of the business transformation workshops and everything that we were doing.
 Elizabeth Connor   18:07 Okay.
 Lewis Pope   18:08 There it, now here's the thing, it's not our data. So it's a cost of, a lot of effort, a lot of time, a lot of conversations had with our MSPs and we don't own the data, go figure that one out. Anyway.
 Elizabeth Connor   18:10 Yeah. Okay. Okay. Somebody didn't gather data properly.
 Lewis Pope   18:26 There is a very, very good set of data there that we should try to get to.
 Elizabeth Connor   18:35 Okay.
 Lewis Pope   18:36 at some point for the EBR specifically because we should be able to leverage it to be our starting points.
 Elizabeth Connor   18:40 OK.
 Lewis Pope   18:48 of like what good looks like or what's, you know.
 Elizabeth Connor   18:53 Yeah.
 Lewis Pope   18:54 Kind of, I think that should be something that we try to find and get into there. One, so we don't start out with a blank slate of what are these numbers supposed to look like? What is the mean for a KPI for this supposed to be? What is the mean for, you know, or you know, what's the spread for a MSP of this body count?
 Elizabeth Connor   19:02 Yeah, okay.
 Lewis Pope   19:15 Those kinds of things.
 Elizabeth Connor   19:17 Okay, so yes, we do need to interpret data and we need to figure out how to interpret data. Okay, this makes a lot of sense to me. So like just being a transfer, being like, hey, we put numbers in a spreadsheet isn't going to cut it.
 Lewis Pope   19:23 Right. Now, it is, and the thing is, is there also needs to be, even after you get through. this process of it.
 Elizabeth Connor   19:43 Yeah.
 Lewis Pope   19:44 There's still going to need to be a handholder at the end of it.
 Elizabeth Connor   19:51 Yeah.
 Lewis Pope   19:51 There's still going to need to be another coworker agent that's goal is to... Help you understand and translate this. And... It would. Premium and get a premium agent cost, and this is kind of one of the things I've been thinking through is you get through a workflow, but then you're not skilled enough. We have a bad habit of overestimating the skills and capabilities of who we sell to.
 Elizabeth Connor   20:25 Yeah, or.
 Lewis Pope   20:27 We can build a golden path in for this that is easy to use, convenient, and we've thought of everything, and there will still be 50% of our user base that's like, I'm lost. What am I supposed to do with this information? What does this mean? How am I supposed to operationalize this? Premium, premium thick.
 Elizabeth Connor   20:43 Yeah.
 Lewis Pope   20:46 Premium deep reasoning model. of workers at that point. That are. more expensive, so we charge it for them as a premium feature and they get the advanced coworkers. Because I still think that's going to be a backwards, because I can guarantee you, if we give this to somebody, there will be support calls. There will always be support calls that are not support calls. I have a business related question about this. about what your report just gave me. Okay, cool. I'm some dude in Manila reading from a script. What am I supposed to tell you about your business practices and how to operationalize this?
 Elizabeth Connor   21:28 Okay, okay, so this makes sense. Okay, so it also seems like we're going to have just the range of people with EBR. Like some people are going to be like, spit me out a baseline report and then I'm going to spend 45 minutes fine-tuning things because I'm on top of my stuff and we're just going to do it this way and you just saved me. 50% of the time and I can knock out more of these. Hooray. And then I'm going to have the people that are just like, I really should start doing these. Machine, if you would just spit this out for me. Please take my money. And then probably almost everything in between.
 Lewis Pope   22:11 Right, right, right. And that's the thing is, like, I know twin states, I'm going to be helping them do their tabletop exercise for their internal tabletop this year. It's part of them gearing themselves up so that they can start
 Elizabeth Connor   22:12 Okay. Mhm.
 Lewis Pope   22:30 offering tabletops as a service delivery line.
 Elizabeth Connor   22:33 Okay, yeah.
 Lewis Pope   22:36 I've been working with them for almost three years at this point. They're a larger outfit. Great example. We could kit this out and everything, give it to them, and I can guarantee you I would be getting phone calls for them for suggestions and recommendations. And hey, what do you think?
 Elizabeth Connor   22:58 Yeah.
 Lewis Pope   22:59 Because I'm, because I've escaped out of the, I'm not just at an Able, it's like, oh no, you're a professional peer that's done this before and you are an actual source of knowledge for me and I will take advantage of it. But then there's,
 Elizabeth Connor   23:17 Yeah.
 Lewis Pope   23:19 A Walls Tech Group this year locally in North Carolina. I know I could give this to he wouldn't, he would take it, he would never have to ask me a single question, and he's a tenth of the size.
 Elizabeth Connor   23:30 Yeah, yeah, so it's, is it? I see, I keep one of the things that I think is it the like, just is it just like some people are just like, I don't like doing this. Or some people, I just need some emotional hand holding because I always think there's always the emotional human factor. And if we forget to design for this one, we lose product.
 Lewis Pope   23:45 It's the it's.
 Elizabeth Connor   23:54 Yeah.
 Lewis Pope   23:55 Persona seat archetype. There are three different things you got to deal with there. Because a seat is the job that's currently being done. It doesn't matter what role is doing it, but the seat exists. And a role can be populated by different archetypes.
 Elizabeth Connor   23:58 Okay. Yeah. Okay. Yeah.
 Lewis Pope   24:13 So that's the way I always think about it. And whenever I get into persona stuff, that's how I always think about it. Your archetypes are the ones that throw the wrench in. Well, now we got to redesign this or reapproach it from a different angle because like you said, you're getting into personal preferences and emotions. And I don't, I
 Elizabeth Connor   24:17 Yeah.
 Lewis Pope   24:31 Don't have the soft skills, and I don't feel like going and asking these kinds of questions well. Part of this process absolutely should be an unstructured data interview. for the, so you as an MSP, you as a user, you get in here, you start through the process. At some point, there's the, I don't have these answers. Whether it's because we can't get it in by API or we can't get it in because we don't have documentation, there are going to be questions about that. the client's business that the business will have to answer. That is a soft skill. That is a social engagement. That is a, I don't like to do that kind of work and I back off from it. Absolutely. So holding their hand or doing it for them, they're like, all right, here's the interview for your customer. Do you approve this interview? Yes. Send it out. They get the e-mail information. They get the e-mail invite, they click on it, get through the portal. It's secure. Okay, let me populate all this information. And then it goes back in the next coworker in the line can pick it up and start working with it.
 Elizabeth Connor   25:52 Yeah.
 Lewis Pope   25:54 Uh, that's... One possible way, but I think that's uh...
 Elizabeth Connor   25:58 Yeah.
 Lewis Pope   26:02 Like you said, for the soft skills, that's one of those soft skills slash the human element there would be a very important thing. Don't leave it to them to go and get the information. You have to do it for them or hold their hand as far and as long as you can. can through the process.
 Elizabeth Connor   26:22 Yeah, yeah, that makes sense, and it's... It's like making people little kits. So it's, you know, it's kind of like if I pack my gym clothes and they're laid out in the morning, I go to the gym. If I have one excuse to not go to the gym in the morning, I will use it. So it's like getting this. Yeah.
 Lewis Pope   26:40 Exactly, it's toddler philosophy. Do you wear the green shirt or the blue shirt today? Not do you want to get dressed?
 Elizabeth Connor   26:46 Yeah, yeah, it's like you guys would like, like I was telling Dunlop earlier today that that I realized that through AI I have almost no understanding of DevOps at all and I'm just like, click the buttons. So I'm just like, I would have to go through a lot of hand-holding to do anything involving DevOps and I would take it. because I like making things. But, you know, all of us have those things. So that's good. So I think Dunlop, I've been asking 90 million questions.
 Lewis Pope   27:14 Um... Yeah.
 Elizabeth Connor   27:19 Do you have questions?
 Lewis Pope   27:21 Oh, no, no, no, no. I mean, I do, but I'm kind of answering them as I talk through and just, yeah, I am one of those. I will make a statement. Please correct me if I'm wrong.
 Elizabeth Connor   27:24 Yeah. Yeah. We're all figuring this out together. So I'm just like, okay, we're making robots do things.
 Lewis Pope   27:32 Uh... Yeah. Uh, it uh for for for this particular use case, um, is the... Through the different steps of the process and everything, what's the... What's the plan for how much of this is going to be agentic exposed where you're actually going to be seeing it and working with it versus how much of this is going to be quiet back end stuff that you'll never see or touch? You kind of have an idea of guidance or a split or anything on that?
 Christopher Dunlop   28:18 Um... So I can't speak for Vortasia because I'm still familiar with myself with the point, but in terms of like for us, the Harless point of view, the idea is you turn up a run book, you attach your... data sources for ACP, however, that's through MCP, however, that's going to be. And then you build a coworker and that coworker will be a non-deterministic flow. So, you know, we use, we use the, you know, generative AI to build up the flow. to curate the flow, to like, you know, schedule it and adapt it as you go. But it'll be a non-deterministic flow. So once the flow is set, it's going to, you know, you're going to have a guaranteed step through this every time. On your earlier point about not being able to visually move stuff, we've worked out a kind of graph system to do that. And so a bit like Rust where you've got like drag and drop elements that you can edit it. And you know, it's just another way of editing the back end config.
 Elizabeth Connor   29:24 Yeah, I, yeah, I also, I mean...
 Christopher Dunlop   29:26 Go on, Best.
 Elizabeth Connor   29:28 I was going to say also I haven't looked at Fertigia, which I think is changing games, but I think we could also potentially with, so I was breaking my brain and figuring out how to write runbook skills. And I think if we wanted to, we could actually send visual instructions with these things too. so people could move things around and could see things. And, you know, and even, you know, it's, I think that, you know, the difference between making something for yourself or buying it from a company like us is going to be the guidance. It's like, are we asking the right questions? Are we setting things up? Are we setting you up for success? And I think we need to figure out
 Lewis Pope   30:23 Yeah, 'cause it's...
 Elizabeth Connor   30:24 Figure out what it is.
 Lewis Pope   30:26 Because it's one of those, I would like to prevent us from getting into a situation that we have with ad lumen, which is the, oh, we don't want to tell you about that. And me as a security individual, like, oh, you can't tell me what detections you, then you're not telling me anything.
 Elizabeth Connor   30:42 Ed.
 Lewis Pope   30:45 thing, therefore, I have to go do everything myself. If you're not willing to tell me what detach and you actually have implemented. then you can't tell me if you're actually monitoring for this actual IOC or how you're monitoring for this IOC. That means I now have to go implement it to have confidence because you can't attest to it.
 Elizabeth Connor   31:01 Yeah.
 Christopher Dunlop   31:06 So, yeah. Yeah, so at that point, complete open book from like a harness perspective. Realistically, our IP would be in a runbooks, been able to offer that like straight away. And then whatever platform we destroyed to build that upon, And if we charge for that or charge for percentage or partner with that, fair enough. But really it's just we think this is the flow you should start with, the template flow. And I guess we could use kind of like... We could apply some like data science principles to tell you where people have had success, where people have not accessed. You could potentially up your cross sell or, you know, blah, blah, blah here and there. But realistically, it's going to be an open book. It'll do whatever you want it to do or not do whatever you want it to do. And all that has to be open by default. We can't close off those runbooks otherwise. You know, you don't know what it does, so why would you trust it? And realize that this is, you know, it's coming out of the Labour budget, whether we like it or not. So you want to put it to full autonomous mode, so you want to know it's exactly what it's doing at every step. It's going to do the same steps every time, and then you slowly build up your uh, tolerance level of how much autonomy you want to give it. So yeah, complete open book.
 Lewis Pope   32:34 Yeah, that's that's good. Um, with... And with that, for your... For your implementation, or what you had in mind originally, was there any off-ramps for anything or any in-ramps for anything mid-process?
 Elizabeth Connor   32:56 Oh, that's interesting. So like in mid process you mean like I am doing an EBR or I'm like in the middle of a tabletop or?
 Lewis Pope   33:06 Right, so there's like, okay, we've got that, we have this workflow and this runbook established. But...
 Elizabeth Connor   33:08 Yeah. Yeah.
 Lewis Pope   33:16 designing the workflows to be, or the runbooks to be resilient enough, or at least forethought enough in how we're setting it up. So that if somebody comes in and says, yep, I need to split it right here. add this additional set of inputs, outputs, whatever, and then close it back in together again. That that's not so catastrophic of a change. I modularity without a building in modules.
 Christopher Dunlop   33:47 Yep, yep. Yeah, I got you. So yes, absolutely. It's the thing that I'm finding quite confusing a bit for Tiger right now, because you've got your MCP server there. And for inquiry, I'm trying to do my own one with my own token that I can use in my own workflow rather than having like a team workflow. This is like a personal workflow and I wanted to lock it down and so on. So yeah, basically everything's a building block. That building block is versioned. You create an instance of that building block. So say, you know, you've got your runbook to, I don't know, delete your red emails. I'm like, sweet, I want to do that as well. So I take your coworker, I clone it. and then I run it with my credentials instead. So and then I can build on to. So basically ability to clone and have an instance of everything. And then in terms of working back up for like resilience, we have an idea of pinning or non-pinning versions. So if you updated your runbook, I have the option there for mine to be automatically updated or for mine to be prompted to say there's a new one if you're interested in it. If not, you can create your own version flow from it.
 Lewis Pope   35:00 Okay. Yeah, that's uh, because I'm down the road, that's the the one of the things that I would be like.
 Elizabeth Connor   35:02 Yeah.
 Lewis Pope   35:10 Some part of the process might be super useful for me, instead of it having to wait cycles for us to do things. Making sure that it's easy enough that somebody can do exactly that, I think will be important because that's how, and this is mid-market play, this is how you make it so a custom in-house solution that's got actual engineers.
 Christopher Dunlop   35:26 Yeah.
 Lewis Pope   35:40 and actual devs making their lives easier to drop into here. Because we're going to be like, oh yeah, let's get the MSP big names in here for integrations. We'll make those SDK wrappers, we'll make these others and add them in there, but there's going to be so much.
 Christopher Dunlop   35:46 Yeah.
 Elizabeth Connor   35:46 Yeah.
 Lewis Pope   36:00 that we'll never get around to and we don't want to block that and Patricia. Kind of the way it's built and everything, it's already built to do that. So let's not hobble it and prevent it from being able to continue to do that. Whatever we build with it should be able to continue to facilitate it.
 Elizabeth Connor   36:23 Yeah, okay, I'm going to ask my last piece. Yeah, yeah, okay, I have two more scary questions, which are one, are we going to have to figure out how to normalize data? And is there a list of common integrations that we should make sure that we're really solid and wonderful on for EBRs?
 Lewis Pope   36:25 For me, anyway. No, I don't. So, data standardization or data normalization, I'm thinking that's going to be something that you just...
 Elizabeth Connor   36:44 And we can get ahead of them.
 Lewis Pope   36:58 That'll be part of the schema matching for me. That is, you're going to have the agents that pull.
 Elizabeth Connor   37:02 Okay.
 Lewis Pope   37:06 Or. Either either as part of the agent that's polling or it's a subprocess, whatever the outputs are going to have to be matched to a schema. Well, just I think that's the easiest way to handle that part of it is to everything has to go into a structured schema, even if it is.
 Elizabeth Connor   37:15 Mhm.
 Lewis Pope   37:29 Even if it is just a non-escaped straight line of text, whatever it is, it needs to go into a schema. I think that'll handle it the best. Marc. There are select databases that we will need to populate. Those will have, it will have to be, there'll have to be some resources and time spent there for that part of it. But as far as passing from one agent to another agent to another agent, schemas I think will be enough. To handle that. Um... And then, for data types or the the the the sources.
 Elizabeth Connor   38:11 Or, right, or like, do we need to have enforcer? Do we need to have this, like, like, you know?
 Lewis Pope   38:18 Right, right, right, right. So, I mean, the big ones are going to, of course, be like, oh yeah, all the MSP vendors. So your ConnectWise, your Kaseya, Datto Slide, will be a new one. Who else is out? But yeah, any of those styles, those actually need to be in there. But whenever you break it down into like categories, it's like, yes, UEM, patch source information, Qualys, BlackPoint, Cisco, Fortinet. If I don't have a GR, if I don't have a network management platform that already has all of this aggregate information in it, then I've got to get that ACE information in there some way. So then there's the question of, well, do we want to make integrations in the platform? where it can go and buy API query out of like ubiquities cloud control or something like that. So there's. Depending how far down the rabbit hole of grabbing the individual piece of evidence that we want to go and grab, that's one of the things, that's a... That's A threshold we kind of have to figure out. Because, yeah, there's so much that would be useful to get in here, but like...
 Elizabeth Connor   39:42 Ed. Yeah.
 Lewis Pope   39:49 I would want to know if my endpoints are aligned to CIS, CIS benchmark L1 for Windows 11. 25H2. That's a very, actually, that's actually a very important thing to be able to attest to and state. You can't do that with in central or insight. You would have to go off and use something like cyber. Fiber Secure Connect. They do that. So that would be just one more data source we would be putting in here. And then we would have to cross it between, all right, I got a database that I populated from N Central that has all of these endpoint statistics. Now I've got to bring in these data points from cyber, from cyber secure, where I have to now map host names and MAC addresses to devices so I can do a diff and figure out if any of these don't have that control in place. Now, where do I move that logic? Where do I?
 Elizabeth Connor   41:00 Yeah.
 Lewis Pope   41:01 No, do I want an AI agent? No, I don't want an AI agent doing this. I want this done with some Python scripts.
 Elizabeth Connor   41:09 Yeah.
 Lewis Pope   41:10 And that's the, there's that part of it. There's so much useful stuff that I would love to get in here from all kinds of places. It's just the what are we, what is the, what are we, what are we willing to do and what kind of efforts are we willing to spend on data normalizations, mapping it? Oh, looky here, we're rebuilding another version of our data set in another database somewhere else. Instead of...
 Elizabeth Connor   41:45 Yeah, so it's like, so as far as is this MVP, is this not MVP? It's fuzzy. We need to figure it out.
 Lewis Pope   41:53 Yeah, yeah, yeah. I wouldn't call, so this, what I've seen and everything is an MVP for somebody that's never done QBRs and are too stressed or don't have the skill set or the inclination for it. I think what you've got represented here is already strong enough
 Elizabeth Connor   41:54 Okay.
 Lewis Pope   42:12 to be an MVP. That said, it is an MVP that they will mature through quickly.
 Elizabeth Connor   42:23 Okay, yeah.
 Lewis Pope   42:26 So I think that's something to be conscious of is whenever you do start showing this off to people.
 Elizabeth Connor   42:29 Yeah. Yeah.
 Lewis Pope   42:33 Is. How much teaching is the platform going to do?
 Elizabeth Connor   42:41 Mhm.
 Lewis Pope   42:42 And then so there's enablement in teaching and education. So enablement just getting the job done, getting the workflow processed.
 Elizabeth Connor   42:43 Yeah. Yeah.
 Lewis Pope   42:51 teaching them and them learning inside of it, they will, oh, we need more. Oh, but this isn't. Oh, but.
 Elizabeth Connor   42:59 Yeah.
 Lewis Pope   43:00 And there will be that the platform should educate and teach them through using it because of osmosis and exposure. Something's going to get through. Some people will take more than others. And I think there would be quite a few people that would go into it right now that would say, Yes, MVP would be like... Hey, three months later, I've done 10 EBRs with it. I need more.
 Elizabeth Connor   43:29 Yeah. Then it, and then it, yeah, then it's figured. I like that. I like that. That makes a lot of sense.
 Lewis Pope   43:34 So, so that's the the the so it would be good initial reception, and this is kind of seeing things how they've happened before with our partner base. There is going to be that this would have an initial wow on it.
 Elizabeth Connor   43:45 Yeah.
 Lewis Pope   43:54 But the initial wow, as MSPs become more familiar with the principal concepts and what this is doing. They'll immediately are going to say, but what about these other things that you haven't included that are important?
 Elizabeth Connor   44:11 Yeah. Yeah, okay, I like this. Yeah.
 Lewis Pope   44:15 And that's that's where the the that's where I think the oh. Instead of it just being purely the pre-built coworkers and the established workflows that we're offering, that's whenever I'm like in the whole, maybe we do open this up and let people build their own start to finish workflows. Because. This is also easy enough to use.
 Christopher Dunlop   44:47 I, I...
 Lewis Pope   44:52 that I think this could be a sellable product as it is to certain MSPs.
 Christopher Dunlop   44:52 But. I think that's always the plan, was like never to like, you know, put them out, was like to give them like a suggestion to like get started, you know, maybe facilitate them in something their company doesn't have. But the idea is like, this offers you like a, what is it for teacher say is a low code, no code, you know, framework or platform to put your flows together. And then potentially, I don't know if like potentially our post sales engineers would also be like, you know, we'll sit with you and build up your flows to save you X amount of dollars. Maybe that's a service as well, like we help build the flows or something. I don't know.
 Lewis Pope   45:20 Right, yeah.
 Elizabeth Connor   45:20 Yeah.
 Lewis Pope   45:33 Oh yeah, that the professional services on it would have to be on the, oh yeah, no, we need a front end, we need a back end, the database, we need the, we need this going over and connecting to something else as well. Absolutely, there'll be professional services in that, but that's, I think this is also, this is a good enough platform.
 Elizabeth Connor   45:50 Yeah.
 Lewis Pope   45:54 to do that with. Because there will be tons of, oh yeah, my client has this workflow that they are looking, my client has a business problem, they're looking for the AI solution. I don't know how, where, what to start with.
 Christopher Dunlop   46:11 Yeah.
 Lewis Pope   46:12 Desk could be the platform for that.
 Christopher Dunlop   46:14 Good.
 Elizabeth Connor   46:16 Yeah.
 Lewis Pope   46:17 Yeah, I mean, it's getting into the same arena as Roost and Trine there. But I think where Roost and Trine are very strong on here, not really security, more operations management. infrastructure, this is open enough that business workflows. Can be worked through it.
 Elizabeth Connor   46:45 Yeah, and we might just need to think through, you know, like what are the business workflows and then, you know, if we're thinking about IT, cybersecurity, are there, you know, Is there better encryption? Are there other things like that that we put on this or things look better or?
 Lewis Pope   47:01 Well, the... Yeah, exactly. That's the kind of the complementary that's coming out of this is that's just the other side of the tabletop exercise coin. A little bit of a little bit of switch, and I have an attack simulation and gap discovery. And it's not just infrastructure, it's business operations gap discovery. It's the, yeah, no, you completely fell flat when it came time to figure out who you're required to notify of the material impact to your company because of a cyber incident. That was a X dollar.
 Christopher Dunlop   47:32 No.
 Lewis Pope   47:39 Fine, you would have gotten.
 Elizabeth Connor   47:41 Yeah, that makes sense. Yeah, I always think that operations need to have like a little, like the bots need to have a little gym where they're testing things and work things out and solve problems.
 Lewis Pope   47:52 I have iterative. Iterative modeling and testing, that's kind of what I was building out the initial set and then small alterations to starting conditions and a temperature change. And away you go, I've got six different models with six different gap discoveries and 10 minutes for an environment.
 Elizabeth Connor   48:10 Emma.
 Lewis Pope   48:15 It's. Yeah, the platform support being able to do it.
 Elizabeth Connor   48:22 Cool. Okay, I am worried so much less after this conversation than before about data, so this is helpful. It sounds like, yeah.
 Lewis Pope   48:30 Yeah, no, that, yeah, yeah, it's data is wonderful. Data is great. We have to be able to facilitate getting whatever data they have. It does not have to be standardized. Patricia seems to be a good enough platform.
 Elizabeth Connor   48:39 Yeah. Mhm.
 Lewis Pope   48:49 That can handle it. And it's not going to... unnecessarily have roadblocks or hobble anything in it.
 Elizabeth Connor   48:59 That's exciting.
 Christopher Dunlop   48:59 Two.
 Lewis Pope   48:59 around that, because they also have, they also process through emails for triggering and scraping actions and everything to kick off stuff. So that's going to be, that's a huge thing. I don't think anybody's gotten down into it yet, but whenever you get into business operations and business
 Elizabeth Connor   49:08 No.
 Lewis Pope   49:19 workflows, especially in SMB space. Jog, how much, how many businesses are still running off of e-mail scraping? A lot.
 Elizabeth Connor   49:28 Yeah.
 Lewis Pope   49:30 So that's a nice feature in there that I think we shouldn't ignore whenever we start getting into workflow implementations.
 Christopher Dunlop   49:40 No, I think the way on just now, Lewis, just so you're aware of it, is a short term. Let's get some people rocking with Patricia. Let's see if we can build a more workflows, and then currently the decision just now is to continue with our own IP, build no harness.
 Elizabeth Connor   49:41 Yeah.
 Christopher Dunlop   50:00 But that, that's obviously subject to change at every point, so...
 Elizabeth Connor   50:04 Yeah.
 Christopher Dunlop   50:05 Um, but...
 Lewis Pope   50:05 Okay.
 Elizabeth Connor   50:06 Yeah.
 Christopher Dunlop   50:07 But keep that in mind and certainly all the good things you see in Vortigia that you think are useful, keep a note of them and we'll make sure we build them as well, yeah.
 Elizabeth Connor   50:18 Yay. Thank you, thank you, thank you.
 Lewis Pope   50:22 Pleasure.
 Christopher Dunlop   50:23 Cheers, guys.
 Elizabeth Connor   50:24 All right, talk soon.
 Christopher Dunlop   50:25 Able.
 Elizabeth Connor stopped transcription
