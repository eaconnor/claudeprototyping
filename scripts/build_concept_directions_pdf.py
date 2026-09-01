# -*- coding: utf-8 -*-
from reportlab.lib.pagesizes import letter
from reportlab.lib.units import inch
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.enums import TA_LEFT, TA_CENTER
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, PageBreak, Table, TableStyle,
    HRFlowable, KeepTogether
)

NAVY = colors.HexColor("#1F3452")
SLATE = colors.HexColor("#4A5568")
ACCENT = colors.HexColor("#2C6E8E")
LIGHT_BG = colors.HexColor("#F4F6F8")
BORDER = colors.HexColor("#D8DEE4")

styles = getSampleStyleSheet()

styles.add(ParagraphStyle(name="DocTitle", fontName="Helvetica-Bold", fontSize=26,
                           textColor=NAVY, spaceAfter=6, leading=30))
styles.add(ParagraphStyle(name="DocSubtitle", fontName="Helvetica", fontSize=13,
                           textColor=SLATE, spaceAfter=4, leading=17))
styles.add(ParagraphStyle(name="DocMeta", fontName="Helvetica", fontSize=9.5,
                           textColor=SLATE, spaceAfter=2))
styles.add(ParagraphStyle(name="SectionHead", fontName="Helvetica-Bold", fontSize=17,
                           textColor=NAVY, spaceBefore=4, spaceAfter=4, leading=21))
styles.add(ParagraphStyle(name="SectionSub", fontName="Helvetica-Oblique", fontSize=11,
                           textColor=ACCENT, spaceAfter=10, leading=14))
styles.add(ParagraphStyle(name="SubHead", fontName="Helvetica-Bold", fontSize=11,
                           textColor=NAVY, spaceBefore=10, spaceAfter=4, leading=14))
styles.add(ParagraphStyle(name="Body", fontName="Helvetica", fontSize=10.3,
                           textColor=colors.HexColor("#222222"), leading=15, spaceAfter=6,
                           alignment=TA_LEFT))
styles.add(ParagraphStyle(name="BodyIntro", fontName="Helvetica", fontSize=11,
                           textColor=colors.HexColor("#222222"), leading=16.5, spaceAfter=8))
styles.add(ParagraphStyle(name="BulletBody", fontName="Helvetica", fontSize=10.3,
                           textColor=colors.HexColor("#222222"), leading=15, spaceAfter=4,
                           leftIndent=14, bulletIndent=2))
styles.add(ParagraphStyle(name="CalloutLabel", fontName="Helvetica-Bold", fontSize=9.5,
                           textColor=ACCENT, spaceAfter=2))
styles.add(ParagraphStyle(name="TOCItem", fontName="Helvetica", fontSize=11,
                           textColor=colors.HexColor("#222222"), spaceAfter=6, leftIndent=8))
styles.add(ParagraphStyle(name="Footer", fontName="Helvetica", fontSize=8,
                           textColor=SLATE))

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

def hr():
    return HRFlowable(width="100%", thickness=0.75, color=BORDER, spaceBefore=4, spaceAfter=12)

story = []

# ---- Cover ----
story.append(Spacer(1, 1.6 * inch))
story.append(Paragraph("ACP Concept Directions", styles["DocTitle"]))
story.append(Paragraph("Five directions for the AI Control Plane, grounded in research and reviewed for how ready each one is to build.", styles["DocSubtitle"]))
story.append(Spacer(1, 0.3 * inch))
story.append(Paragraph("Prepared by Beth Connor &nbsp;&middot;&nbsp; 15 July 2026", styles["DocMeta"]))
story.append(Paragraph("For: Nicole, Meaghan, Laura", styles["DocMeta"]))
story.append(Spacer(1, 0.6 * inch))
story.append(hr())
story.append(Paragraph(
    "<b>How to read this document.</b> Each concept below is described the same way: the problem it "
    "solves, what it would do, why we believe it, and — just as importantly — what we don't yet know. "
    "We've been deliberately direct about gaps and open questions, rather than presenting these ideas "
    "as more finished than they are. That's intentional: the goal of this document is to help make good "
    "decisions about where to invest next, not to make every idea sound equally ready.",
    styles["BodyIntro"]))
story.append(PageBreak())

# ---- Table of contents ----
story.append(Paragraph("Contents", styles["SectionHead"]))
story.append(hr())
toc_items = [
    "1.  The Client Proof Engine — quarterly business reviews & proof of value",
    "2.  The Live Incident Story — real-time incident reporting",
    "3.  The Governed Foundation — safe, auditable AI oversight",
    "4.  The Smarter Front Door — everyday ticket triage",
    "5.  One Service, Sold Two Ways — packaging as vCIO / vCISO offerings",
    "Summary — what we recommend doing next",
]
for item in toc_items:
    story.append(Paragraph(item, styles["TOCItem"]))
story.append(PageBreak())

def concept_section(number, title, tagline, problem, value_prop, features, going_for_us, still_need, opportunity=None):
    block = []
    block.append(Paragraph(f"{number}. {title}", styles["SectionHead"]))
    block.append(Paragraph(tagline, styles["SectionSub"]))
    block.append(hr())
    block.append(Paragraph("The problem", styles["SubHead"]))
    block.append(Paragraph(problem, styles["Body"]))
    block.append(Paragraph("What it would do", styles["SubHead"]))
    block.append(Paragraph(value_prop, styles["Body"]))
    for f in features:
        block.append(Paragraph(f"&bull;&nbsp;&nbsp;{f}", styles["BulletBody"]))
    block.append(Spacer(1, 6))
    block.append(callout("What's already working in our favor", going_for_us,
                          bg=colors.HexColor("#EEF5F0"), border=colors.HexColor("#BFDCC7"),
                          label_color=colors.HexColor("#2E7D46")))
    block.append(Spacer(1, 8))
    block.append(callout("What we still need to establish", still_need,
                          bg=colors.HexColor("#FBF3E9"), border=colors.HexColor("#E9CFA3"),
                          label_color=colors.HexColor("#9C6A1E")))
    if opportunity:
        block.append(Spacer(1, 8))
        block.append(callout("Worth exploring", opportunity,
                              bg=colors.HexColor("#EAF1F8"), border=colors.HexColor("#BBD3E8"),
                              label_color=ACCENT))
    story.extend(block)
    story.append(PageBreak())

# ---- 1. Client Proof Engine ----
concept_section(
    1, "The Client Proof Engine", "Quarterly business reviews and a running record of proven value.",
    "MSPs need to prove their value to clients every quarter, but the evidence for that value is "
    "scattered across many different vendor tools. Today, pulling that into one credible report takes "
    "hours of manual work — or, done quickly, it looks like a raw data dump rather than a story a client "
    "can trust.",
    "An AI coworker drafts a client-ready quarterly review by pulling together activity across the MSP's "
    "technology stack into one clear narrative. The MSP reviews and edits it before it goes out, so the "
    "final version is always in their voice. A companion “Value Ledger” tracks and proves what was "
    "actually delivered — hours saved, incidents resolved, risk reduced — with a clear, honest line "
    "between numbers we've measured directly and numbers we've estimated.",
    [
        "One narrative built from every connected tool, not a per-vendor report",
        "Editable draft, not an auto-sent document — the MSP always has the final word",
        "A running ledger of proven value the MSP can point to, quarter over quarter",
        "Built to adapt for different audiences (e.g. a technical owner vs. a business owner)",
    ],
    "This was the single most requested capability across every method we used to gather feedback — "
    "structured interviews, informal conversations, and an independent survey all agreed on it. It's also "
    "the one idea that can be built on infrastructure we already have finished and tested (the systems "
    "that store runbooks and calculate value are both complete).",
    "Combining data cleanly and reliably across many different vendors' tools is not yet built, and we "
    "haven't yet confirmed we're legally able to use other vendors' data this way — that needs a "
    "straightforward legal review before we go further. We also haven't tested whether a short, "
    "roughly-15-minute review-and-edit process is realistic in practice, and we haven't yet spoken directly "
    "with the people who would prepare these reviews day to day (as opposed to the people who decide "
    "whether to buy the tool).",
    "Partnering with, or acquiring, a company that already solves cross-vendor data normalization could "
    "close our biggest gap here faster than building that capability from scratch. Worth a serious look."
)

# ---- 2. Live Incident Story ----
concept_section(
    2, "The Live Incident Story", "Real-time, defensible incident reporting — written as the incident happens.",
    "When a client is affected by a security incident, the MSP needs to explain clearly and quickly what "
    "happened — to the client, often to an auditor, and sometimes to a cyber-insurance provider. Piecing "
    "that story together today, after the fact, is slow and depends heavily on one senior person's memory "
    "and notes.",
    "An AI coworker correlates information across a client's security tools in real time and drafts a "
    "clear account of the incident as it unfolds — producing both a plain-language summary for the client "
    "and a detailed, evidence-based version for internal and compliance use.",
    [
        "Builds the incident story continuously, not after the fact",
        "Two versions of every report: client-facing summary and full technical record",
        "Designed to support insurance and audit requirements MSPs already have to meet",
        "Human review and approval built in before anything is finalized",
    ],
    "This was the second most requested capability overall. It also plays directly to a real strength: "
    "we have first-party access to security telemetry (through Adlumin) that most competitors have to "
    "work much harder to get.",
    "We have not yet confirmed — technically or legally — that the relevant incident data can flow into "
    "this kind of report in every situation. We also don't yet know whether an MSP would trust an AI's "
    "read of an active, high-pressure incident, or whether an insurance provider would accept an "
    "AI-generated report as sufficient evidence on its own. These are real open questions rather than "
    "engineering tasks, and we think they should be answered before more design work goes into this "
    "concept.",
    None
)

# ---- 3. Governed Foundation ----
concept_section(
    3, "The Governed Foundation", "The trust and safety layer underneath every AI coworker we build.",
    "MSPs want to put AI to real work, but they need confidence it won't take a harmful action — and "
    "they need to be able to explain exactly what happened if something ever does go wrong.",
    "This is the system that manages permission levels for every AI coworker — from “must check with a "
    "person first” to “trusted to act on its own” — and keeps a complete, reviewable record of every "
    "action taken.",
    [
        "Graduated trust levels, so AI earns more autonomy over time rather than getting it by default",
        "A complete, auditable record of what every coworker did and why",
        "The shared foundation other coworkers (like the Client Proof Engine) are built on",
    ],
    "Every person we spoke with wanted this kind of oversight — it isn't optional in this market, it's "
    "the baseline expectation. Much of the underlying engine is already built.",
    "The hardest open question is whether — and how — we can meaningfully oversee AI agents an MSP "
    "builds themselves, outside our system. That's a genuinely unsolved problem, not simply something "
    "we haven't gotten to yet, and we'd treat it as a longer-term research question. We also asked "
    "directly whether people would pay separately for “governance” as its own product, and the honest "
    "answer, so far, is mostly no — people expect it bundled with whatever tool does the actual work. "
    "Our recommendation is to think of this as the foundation the other four concepts stand on, rather "
    "than something we sell on its own.",
    None
)

# ---- 4. Smarter Front Door ----
concept_section(
    4, "The Smarter Front Door", "The first experience a new customer has with our AI coworkers.",
    "Technicians spend real time every day just figuring out what a new support ticket actually means "
    "before they can start solving it.",
    "An AI coworker reads, classifies, and routes incoming tickets automatically, so a technician opens "
    "a ticket that's already organized rather than a blank, context-free request.",
    [
        "Automatic classification and routing to the right queue",
        "Already built and live as the first thing a new customer experiences with our coworkers",
        "Designed to run safely at high daily volume with human sign-off on anything higher-risk",
    ],
    "This is the one concept we've already built, and it's currently the very first AI experience a new "
    "customer has with us.",
    "In its current form, this mostly sorts and routes tickets — it doesn't yet do the deeper diagnostic "
    "work that would make it feel meaningfully different from tools already on the market. We also "
    "haven't yet measured whether trying this feature leads customers on to try our higher-value tools, "
    "which was the original reasoning for making it the first thing people see. Two inexpensive next "
    "steps would tell us a lot: adding simple tracking to see whether people who try this go on to try "
    "other tools, and directly testing whether our approach to diagnosis is actually better than tools "
    "MSPs already use.",
    None
)

# ---- 5. Packaging ----
concept_section(
    5, "One Service, Sold Two Ways", "Not a new product — a new way of presenting what we already have.",
    "MSPs already act as trusted “virtual CIOs” and “virtual CISOs” for their own clients. Right now we "
    "present our coworkers as a list of separate tools rather than as support for those two established, "
    "resellable roles.",
    "Package our existing coworkers into two ready-to-resell services that map to roles MSPs already "
    "sell: a virtual CIO service (built around the Client Proof Engine and forward planning) and a "
    "virtual CISO service (built around incident response, security reviews, and identity management).",
    [
        "No new engineering required to test the idea — it's a packaging and pricing question",
        "Positions our tools as supporting a service the MSP already sells, not a set of add-ons",
        "Opens the door to charging based on the value we help create, not a flat per-device fee",
    ],
    "This reframing is well supported by how MSPs already talk about their own client relationships, "
    "and it's the only clear path we've identified to pricing based on value delivered rather than a "
    "flat rate — which could meaningfully change what this business is worth over time.",
    "We haven't yet tested whether MSPs actually want to buy and resell a packaged service this way, "
    "versus choosing individual tools one at a time. And even if the answer is yes, we don't yet have "
    "the billing systems in place to charge based on a share of what the MSP earns from their client — "
    "that would be new infrastructure to build, not a small addition to what exists today.",
    "This is cheap and fast to test directly with a handful of MSPs before any of the underlying billing "
    "work is committed to. Worth doing regardless of what else gets prioritized."
)

# ---- Summary ----
story.append(Paragraph("Summary — what we recommend doing next", styles["SectionHead"]))
story.append(hr())

rows = [
    ["Concept", "Our read", "Recommended next step"],
    ["1. Client Proof Engine", "Strongest overall bet; the demand signal is the clearest we have.",
     "Run a legal review on cross-vendor data use and a small session with the people who'd prepare these reviews."],
    ["2. Live Incident Story", "Promising, but depends on a specific data question we haven't answered yet.",
     "Confirm the technical and legal picture before further design work."],
    ["3. Governed Foundation", "Real and necessary — best understood as infrastructure, not a standalone sale.",
     "Continue building as the shared foundation; treat outside-agent oversight as a separate research question."],
    ["4. Smarter Front Door", "Already live; we haven't yet proven it's earning its place as the first experience.",
     "Add simple usage tracking and directly test our diagnostic accuracy against existing tools."],
    ["5. Packaging (vCIO/vCISO)", "A positioning question, not a technical one — quick to test.",
     "Test the packaging directly with a small group of MSPs."],
]
tbl = Table(rows, colWidths=[1.7 * inch, 2.5 * inch, 2.5 * inch], repeatRows=1)
tbl.setStyle(TableStyle([
    ("BACKGROUND", (0, 0), (-1, 0), NAVY),
    ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
    ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
    ("FONTSIZE", (0, 0), (-1, -1), 9),
    ("FONTNAME", (0, 1), (-1, -1), "Helvetica"),
    ("VALIGN", (0, 0), (-1, -1), "TOP"),
    ("GRID", (0, 0), (-1, -1), 0.5, BORDER),
    ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.white, LIGHT_BG]),
    ("LEFTPADDING", (0, 0), (-1, -1), 7),
    ("RIGHTPADDING", (0, 0), (-1, -1), 7),
    ("TOPPADDING", (0, 0), (-1, -1), 6),
    ("BOTTOMPADDING", (0, 0), (-1, -1), 6),
]))
story.append(tbl)
story.append(Spacer(1, 14))
story.append(Paragraph(
    "Across all five concepts, two questions come up repeatedly and are worth answering early: whether "
    "we can legally combine data from other vendors' tools into a single client-facing report, and "
    "whether the people who'd actually use these tools day to day want an AI-drafted starting point to "
    "edit — or simply want the finished answer handed to them. Both are answerable quickly, through a "
    "short legal review and a small round of interviews, well before any larger investment is made.",
    styles["Body"]
))

def add_footer(canvas, doc):
    canvas.saveState()
    canvas.setFont("Helvetica", 8)
    canvas.setFillColor(SLATE)
    canvas.drawString(0.75 * inch, 0.5 * inch, "ACP Concept Directions — 15 July 2026")
    canvas.drawRightString(letter[0] - 0.75 * inch, 0.5 * inch, f"Page {doc.page}")
    canvas.restoreState()

doc = SimpleDocTemplate(
    "/Users/elizabeth/Desktop/Bethproto/ACP-Concept-Directions-2026-07-15.pdf",
    pagesize=letter,
    topMargin=0.85 * inch, bottomMargin=0.85 * inch,
    leftMargin=0.9 * inch, rightMargin=0.9 * inch,
    title="ACP Concept Directions", author="Beth Connor"
)
doc.build(story, onFirstPage=add_footer, onLaterPages=add_footer)
print("done")
