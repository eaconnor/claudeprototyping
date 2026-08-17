# -*- coding: utf-8 -*-
from reportlab.lib.pagesizes import letter
from reportlab.lib.units import inch
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, PageBreak, Table, TableStyle, HRFlowable
)

NAVY = colors.HexColor("#1F3452")
SLATE = colors.HexColor("#4A5568")
ACCENT = colors.HexColor("#2C6E8E")
LIGHT_BG = colors.HexColor("#F4F6F8")
BORDER = colors.HexColor("#D8DEE4")
GREEN = colors.HexColor("#2E7D46")
AMBER = colors.HexColor("#9C6A1E")

styles = getSampleStyleSheet()
styles.add(ParagraphStyle(name="DocTitle", fontName="Helvetica-Bold", fontSize=26,
                           textColor=NAVY, spaceAfter=6, leading=30))
styles.add(ParagraphStyle(name="DocSubtitle", fontName="Helvetica", fontSize=13,
                           textColor=SLATE, spaceAfter=4, leading=17))
styles.add(ParagraphStyle(name="DocMeta", fontName="Helvetica", fontSize=9.5,
                           textColor=SLATE, spaceAfter=2))
styles.add(ParagraphStyle(name="SectionHead", fontName="Helvetica-Bold", fontSize=17,
                           textColor=NAVY, spaceBefore=4, spaceAfter=4, leading=21))
styles.add(ParagraphStyle(name="SubHead", fontName="Helvetica-Bold", fontSize=11.5,
                           textColor=NAVY, spaceBefore=10, spaceAfter=4, leading=15))
styles.add(ParagraphStyle(name="Body", fontName="Helvetica", fontSize=10.3,
                           textColor=colors.HexColor("#222222"), leading=15.5, spaceAfter=6))
styles.add(ParagraphStyle(name="BodyIntro", fontName="Helvetica", fontSize=11,
                           textColor=colors.HexColor("#222222"), leading=16.5, spaceAfter=8))
styles.add(ParagraphStyle(name="NumBody", fontName="Helvetica", fontSize=10.3,
                           textColor=colors.HexColor("#222222"), leading=15.5, spaceAfter=8,
                           leftIndent=14))
styles.add(ParagraphStyle(name="TOCItem", fontName="Helvetica", fontSize=11,
                           textColor=colors.HexColor("#222222"), spaceAfter=6, leftIndent=8))

def hr():
    return HRFlowable(width="100%", thickness=0.75, color=BORDER, spaceBefore=4, spaceAfter=12)

def callout(label, text, bg=LIGHT_BG, border=BORDER, label_color=ACCENT):
    t = Table(
        [[Paragraph(f"<b>{label}</b>", ParagraphStyle(name="cl", fontName="Helvetica-Bold",
                                                        fontSize=9.5, textColor=label_color))],
         [Paragraph(text, styles["Body"])]],
        colWidths=[6.4 * inch]
    )
    t.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, -1), bg),
        ("BOX", (0, 0), (-1, -1), 0.75, border),
        ("LEFTPADDING", (0, 0), (-1, -1), 10),
        ("RIGHTPADDING", (0, 0), (-1, -1), 10),
        ("TOPPADDING", (0, 0), (0, 0), 8),
        ("BOTTOMPADDING", (0, 0), (0, 0), 2),
        ("TOPPADDING", (0, 1), (0, 1), 0),
        ("BOTTOMPADDING", (0, 1), (0, 1), 8),
    ]))
    return t

story = []

# ---- Cover ----
story.append(Spacer(1, 1.5 * inch))
story.append(Paragraph("ACP Idea Chess", styles["DocTitle"]))
story.append(Paragraph("A structured stress test of our five concept directions — finding the weak points "
                        "before the market does, not after.", styles["DocSubtitle"]))
story.append(Spacer(1, 0.3 * inch))
story.append(Paragraph("Prepared by Beth Connor &nbsp;&middot;&nbsp; 15 July 2026", styles["DocMeta"]))
story.append(Paragraph("For: Nicole, Meaghan, Laura", styles["DocMeta"]))
story.append(Spacer(1, 0.6 * inch))
story.append(hr())
story.append(Paragraph(
    "<b>What this exercise is.</b> Before committing engineering time to any of our five concept "
    "directions, we ran each one through a structured challenge process: for every concept, we asked "
    "a range of established business and product frameworks (the kind used across the industry to "
    "evaluate new ideas — customer-need models, pricing models, market-positioning models, and others) "
    "to argue against it, not for it. Each framework had to name the specific evidence that would prove "
    "the idea wrong, and we tracked every assumption an idea depends on. The goal isn't to find fault "
    "for its own sake — it's to find the cheapest possible way to learn what would actually break an "
    "idea, before we've spent real money building it. Anywhere this document says an idea is “weak” or "
    "“unproven,” that reflects a gap in our evidence, not a verdict on the idea's potential.",
    styles["BodyIntro"]))
story.append(PageBreak())

# ---- TOC ----
story.append(Paragraph("Contents", styles["SectionHead"]))
story.append(hr())
for item in [
    "Six patterns behind why ideas struggle",
    "Two questions that would unlock most of the portfolio",
    "Where each concept stands today",
    "Recommended path forward",
]:
    story.append(Paragraph(item, styles["TOCItem"]))
story.append(PageBreak())

# ---- Section: six patterns ----
story.append(Paragraph("Six patterns behind why ideas struggle", styles["SectionHead"]))
story.append(Paragraph(
    "We didn't find dozens of unrelated problems — we found six recurring patterns, and most of them "
    "show up in more than one concept. That's useful: it means a small number of targeted questions can "
    "de-risk a large part of the portfolio at once.", styles["Body"]))

patterns = [
    ("Getting other companies' data into our system.",
     "Several of our best ideas depend on pulling data from tools other vendors own. We haven't yet "
     "confirmed, technically or legally, that we're able to do this in every case."),
    ("We've mostly asked buyers, not day-to-day users.",
     "Almost everything we know about demand comes from the people who decide whether to purchase a "
     "tool, not the people who would actually use it every day. We also haven't tested whether people "
     "want our specific approach, versus just wanting the underlying problem solved by any means."),
    ("Some of what's wanted most can be built cheaply by the customer, or is already expected for free.",
     "The features MSPs want most are sometimes also the easiest for a technical customer to build "
     "themselves, or the ones they already expect their existing tools to add at no extra cost."),
    ("We don't yet have proof people will pay for everything we're proposing.",
     "In a few areas — particularly anything framed as “oversight” or “governance” — the people we "
     "spoke with were candid that they don't expect to pay for it separately."),
    ("Mistakes are costly and hard to walk back.",
     "A wrong number in a client report, or a wrong conclusion in an incident report, can cost real "
     "trust — more than a typical software bug would."),
    ("We've built the underlying infrastructure faster than the customer-facing tools that prove it's worth something.",
     "Some of our best engineering work so far has gone into the systems underneath our tools, rather "
     "than into the specific tools our research says customers want most."),
]
for i, (title, body) in enumerate(patterns, start=1):
    story.append(Paragraph(f"<b>{i}. {title}</b>", ParagraphStyle(
        name=f"pat{i}", fontName="Helvetica-Bold", fontSize=10.6, textColor=NAVY,
        spaceBefore=8, spaceAfter=2, leading=14)))
    story.append(Paragraph(body, styles["NumBody"]))
story.append(PageBreak())

# ---- Section: two questions ----
story.append(Paragraph("Two questions that would unlock most of the portfolio", styles["SectionHead"]))
story.append(Paragraph(
    "Of everything above, two specific questions gate the largest share of our ideas — and both are "
    "answerable in days, through a short legal review or a small round of interviews, not through months "
    "of engineering.", styles["Body"]))

story.append(callout(
    "Question 1 — Can we legally combine other vendors' data into one client-facing report?",
    "This affects the Client Proof Engine, the Live Incident Story, and any future cross-tool "
    "reconciliation work. A short legal and contractual review, plus a look at one competitor's terms "
    "of service, would answer this directly."))
story.append(Spacer(1, 10))
story.append(callout(
    "Question 2 — Do the people doing this work day-to-day want an AI-drafted starting point to edit, "
    "or do they just want the finished answer?",
    "Every demand signal we have so far comes from buyers, not from the technicians and account "
    "managers who would actually use these tools. A small set of interviews and a hands-on session with "
    "a working draft would tell us which it is."))
story.append(PageBreak())

# ---- Section: where each concept stands ----
story.append(Paragraph("Where each concept stands today", styles["SectionHead"]))
story.append(Paragraph(
    "Rather than express this as a single score — which can create a false sense of precision — we "
    "describe each concept's readiness in plain terms below, along with the specific step that would "
    "move it forward fastest.", styles["Body"]))

concepts = [
    ("1. Client Proof Engine", GREEN, "Strongest position",
     "The clearest, most consistent demand signal we have, and it can be built on infrastructure that "
     "already exists. The two open questions above are exactly the two gaps holding it back.",
     "Run the legal review and a small user session; then begin building the one piece that's genuinely "
     "new (combining data across vendors)."),
    ("2. Live Incident Story", AMBER, "Promising, but gated",
     "Real demand and a genuine strength in our own data access — but it depends on confirming a "
     "specific technical and legal question we haven't yet answered, and on understanding whether "
     "people would trust an AI's read of an active incident.",
     "Confirm the data-access question first. Hold off on further design work until that's resolved."),
    ("3. Governed Foundation", AMBER, "Necessary, not sellable alone",
     "Universally wanted as a baseline expectation, but people don't expect to pay for it as its own "
     "product — and the hardest part (overseeing agents built outside our system) is a genuinely open "
     "research question, not an engineering backlog item.",
     "Continue building it as shared infrastructure. Treat the outside-agent question as longer-term "
     "research, not part of this round."),
    ("4. Smarter Front Door", AMBER, "Built, but unproven",
     "Already live as the first experience new customers have — but we haven't measured whether it's "
     "doing the job we built it to do (leading people toward our other tools), and it doesn't yet do the "
     "deeper work that would set it apart from tools already on the market.",
     "Add simple usage tracking, and directly test our approach against existing alternatives."),
    ("5. Packaging (vCIO / vCISO)", GREEN, "Cheap to test",
     "Not a technical question at all — a positioning and pricing question. It's also the clearest path "
     "we've found to pricing based on value delivered rather than a flat fee.",
     "Test the packaging directly with a small group of MSPs before committing to any new billing "
     "infrastructure it would eventually need."),
]
for name, color, tag, body, next_step in concepts:
    story.append(Table(
        [[Paragraph(f"<b>{name}</b>", ParagraphStyle(name="cn", fontName="Helvetica-Bold",
                                                       fontSize=11.5, textColor=NAVY)),
          Paragraph(f"<b>{tag}</b>", ParagraphStyle(name="ct", fontName="Helvetica-Bold",
                                                     fontSize=9.5, textColor=color, alignment=2))]],
        colWidths=[4.6 * inch, 1.8 * inch]
    ))
    story.append(Spacer(1, 3))
    story.append(Paragraph(body, styles["Body"]))
    story.append(Paragraph(f"<b>Fastest next step:</b> {next_step}", styles["Body"]))
    story.append(Spacer(1, 8))
    story.append(hr())
story.append(PageBreak())

# ---- Section: recommended path ----
story.append(Paragraph("Recommended path forward", styles["SectionHead"]))
story.append(Paragraph(
    "None of this requires a large upfront investment. In order, we'd suggest:", styles["Body"]))
steps = [
    "Answer the two unlocking questions (the legal review and the user/operator research) — days, "
    "not weeks, and they inform almost everything else.",
    "Add usage tracking to the Smarter Front Door so we know whether it's doing its job.",
    "Begin building the Client Proof Engine on our existing infrastructure, informed by what the legal "
    "review and user research tell us.",
    "Test the vCIO / vCISO packaging directly with a small group of MSPs — low cost, and it changes how "
    "we think about pricing everything else.",
    "Hold the Live Incident Story and further Governed Foundation work until their specific open "
    "questions have real answers, so we're not designing ahead of what we can actually deliver.",
]
for i, s in enumerate(steps, start=1):
    story.append(Paragraph(f"<b>{i}.</b> {s}", styles["NumBody"]))

story.append(Spacer(1, 14))
story.append(Paragraph(
    "This is our professional read of the evidence, not a final decision — where a call involves cost, "
    "priority, or strategy, we've flagged it as worth a product and leadership conversation rather than "
    "deciding it here.", styles["Body"]))

def add_footer(canvas, doc):
    canvas.saveState()
    canvas.setFont("Helvetica", 8)
    canvas.setFillColor(SLATE)
    canvas.drawString(0.75 * inch, 0.5 * inch, "ACP Idea Chess — Stress-Test Findings — 15 July 2026")
    canvas.drawRightString(letter[0] - 0.75 * inch, 0.5 * inch, f"Page {doc.page}")
    canvas.restoreState()

doc = SimpleDocTemplate(
    "/Users/elizabeth/Desktop/Bethproto/ACP-Idea-Chess-Findings-2026-07-15.pdf",
    pagesize=letter,
    topMargin=0.85 * inch, bottomMargin=0.85 * inch,
    leftMargin=0.9 * inch, rightMargin=0.9 * inch,
    title="ACP Idea Chess — Stress-Test Findings", author="Beth Connor"
)
doc.build(story, onFirstPage=add_footer, onLaterPages=add_footer)
print("done")
