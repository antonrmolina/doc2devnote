// Created with jtex v.1.0.20
#import "bnext.typ": *

#import "myst-imports.typ": *

#let tableStyle = (
  map-cells: cell => {
    if (cell.y == 0) {
      return (..cell, content: strong(text(cell.content, 8pt)))
    }
    (..cell, content: text(cell.content, 8pt))
  },
  auto-vlines: false,
  map-hlines: line => {
    if (line.y == 0 or line.y == 1) {
      line.stroke = gray + 1pt;
    } else {
      line.stroke = 0pt;
    }
    return line
  },
)

#show: template.with(
  frontmatter: (
    title: "Nucleus Base Cell v0.5 Testing",
    abstract: [
  This Developer Note presents the first evaluation of Nucleus Base Cell, a liposome-encapsulated system containing Nucleus Cytosol v0.5 for protein synthesis. We demonstrate preparation of the lipid mixture, successful assembly of liposomes containing Cytosol v0.5, and time-course expression of deGFP inside the liposomes using a pOpen-deGFP DNA template, establishing the activity of Base Cell v0.5.
    ],
          open-access: true,
        github: "https://github.com/bnext-bio/nucleus-developer-notes",
          date: datetime(
      year: 2025,
      month: 12,
      day: 19,
    ),
        keywords: ("Cytosol","PURE","Base Cell","Developer Cell",),
      authors: (
        (
        name: "Surendra Yadav",
          orcid: "0009-0009-5630-957X",
            email: "surendra@bnext.bio",
            affiliations: ("1"),
        ),
      ),
    affiliations: (
        (
        id: "1",
        name: "b.next, San Francisco, California, 94107, USA",
      ),
      ),
      license: (id: "CC-BY-4.0", name: "Creative Commons Attribution 4.0 International", url: "https://creativecommons.org/licenses/by/4.0/"),
    ),
  )

// This may be moved below the first paragraph to start columns later
// #set page(columns: 2, margin: (x: 1.5cm, y: 2cm),)

/* Written by MyST v1.6.6 */

= Overview <overview>

In a previous DevNote, we introduced #cite(<Yadav_2025>, form: "prose") and demonstrated its performance relative to the PURExpress system. In this DevNote, we encapsulate Nucleus Cytosol v0.5 within liposomes to generate a Base Cell that expresses deGFP over time. We present results and brief protocols for these processes\; a detailed version of the protocols will be released later through Nucleus Distribution.

= Base Cell Composition <base-cell-composition>

Assembly of the Base Cell requires preparation of three key components: the lipid-oil mixture for the cell membrane, the inner solution for protein synthesis, and the outer solution to maintain external osmolarity and prevent bursting or shrinking of cells. The critical materials required are listed in #link(<materials>)[Table~1]:

#show figure: set block(breakable: breakableDefault)
#figure(
  tablex(columns: 3, header-rows: 1, repeat-header: true, ..tableStyle, ..columnStyle,
[
Name
],
[
Product
],
[
Manufacturer
],
[
Glucose
],
[
D-(+)-Glucose, 99.5%
],
[
Sigma-Aldrich (G8270-1KG)
],
[
POPC
],
[
16:0-18:1 PC (POPC)
],
[
Avanti Research (A80557)
],
[
Liss-Rhod-PE
],
[
18:1 Liss Rhod PE
],
[
Avanti Research (A81150)
],
[
Cholesterol
],
[
Cholesterol (plant)
],
[
Avanti Research (A80100)
],
[
Mineral Oil
],
[
Mineral oil, pure
],
[
Thermo Scientific (415080010)
],
[
Glass vials
],
[
1.8 mL glass vials
],
[
Fisher Scientific (03-339-22A)
],
[
Energy Solution
],
[
SMix
],
[
b.next
],
[
PURE Protein Mix
],
[
PMix
],
[
b.next
],
[
_E. coli_ Ribosomes
],
[
Ribosomes
],
[
b.next
],
[
_E. coli_ tRNAs
],
[
tRNAs
],
[
b.next
],
[
Magnesium acetate
],
[
Magnesium acetate
],
[
Sigma-Aldrich (M5661)
],
[
DNA template
],
[
pOpen-deGFP
],
[
b.next
],
[
RNAse Inhibitor, Murine
],
[
RNAse Inhibitor, Murine
],
[
NEB (M0314S)
],
[
Nuclease-free water
],
[
Nuclease-free water
],
[
ThermoFisher Scientific (AM9916)
],
[
Optical Adhesive Film
],
[
MicroAmp Optical Adhesive Film
],
[
ThermoFisher Scientific (4311971)
],
[
384-well glass bottom plates
],
[
384-well glass bottom plates
],
[
Cellvis (P384-1.5H-N)
],
[
Optiprep
],
[
Optiprep
],
[
Serumwerk bernburg (1893)
],
[
Osmometer
],
[
Vapor Pressure Osmometer
],
[
Wescor EliTech Vapro 5600
],
),
  caption: [
Critical Materials
],
  kind: "table",
  supplement: [Table],
) <materials>

== Lipid-Oil Mixture <lipid-oil-mixture>

The membrane of the Base Cell is composed of 1-palmitoyl-2-oleoyl-sn-glycero-3-phosphocholine *(POPC)*, plant cholesterol *(Chol)*, and 1,2-dioleoyl-sn-glycero-3-phosphoethanolamine-N-(lissamine rhodamine B sulfonyl) *(Liss-Rhod PE)*. Liss-Rhod PE serves as a fluorescent label for the cell membrane, enabling imaging and tracking. A brief protocol for preparing the lipid-oil mixture is provided below.

+ Add 1 mL mineral oil in the 1.8 mL small glass vial.
+ Add lipids shown in #link(<lipid-oil-mix>)[Table~2] into the glass vial on top of the mineral oil. The total intended lipid amount is 7.62 µmol.

#show figure: set block(breakable: breakableDefault)
#figure(
  tablex(columns: 5, header-rows: 1, repeat-header: true, ..tableStyle, ..columnStyle,
[
Lipid
],
[
Target Percentage (%)
],
[
Molecular Weight (g/mol)
],
[
Stock Concentration (mg/mL)
],
[
Volume to add (µL)
],
[
POPC
],
[
70
],
[
760.76
],
[
25
],
[
162.17
],
[
Chol
],
[
29.95
],
[
386.654
],
[
50
],
[
17.65
],
[
Liss-Rhod PE
],
[
0.05
],
[
1301.71
],
[
1
],
[
4.96
],
),
  caption: [
Lipid-Oil Mixture
],
  kind: "table",
  supplement: [Table],
) <lipid-oil-mix>

#set enum(start: 3)
+ Vortex the lipid-in-oil mixture for 10 seconds.
+ Place the glass vial in the bead-loaded hot bath at approximately 55~°C for 4 hours, shielding it from light with an aluminum foil cover. Do not use a lid, as the goal is to allow chloroform to evaporate from the lipids.
+ Place the jar (with lid) containing lipid-in-oil solution at RT for 10 mins before using.
#set enum(start: 1)

== Inner Solution (Nucleus Cytosol v0.5) <inner-solution-nucleus-cytosol-v0-5>

#cite(<Yadav_2025>, form: "prose") serves as the inner solution for deGFP protein synthesis. The composition of the 40 µL inner solution is shown in #link(<inner-solution>)[Table~3]. Of this, 30 µL is used for encapsulation, and 10 µL is reserved for the osmolarity check. In addition to the components of Cytosol v0.5, Optiprep is included as a density gradient medium to facilitate the inverted emulsion method for generating synthetic cells. The inner solution is prepared on ice or a cold block to prevent protein expression from starting during assembly. This ensures the microscope captures the complete fluorescence kinetics for deGFP expression.

#show figure: set block(breakable: breakableDefault)
#figure(
  tablex(columns: 6, header-rows: 1, repeat-header: true, ..tableStyle, ..columnStyle,
[
Component
],
[
Input concentration
],
[
Unit
],
[
Final concentration
],
[
Unit
],
[
Volume for one reaction (µL)
],
[
SMix
],
[
4
],
[
$times$
],
[
1
],
[
$times$
],
[
10
],
[
PMix
],
[
15
],
[
mg/mL
],
[
1.80
],
[
mg/mL
],
[
4.8
],
[
Ribosomes
],
[
10
],
[
µM
],
[
1.8
],
[
µM
],
[
7.2
],
[
pOpen-deGFP DNA
],
[
124
],
[
nM
],
[
3
],
[
nM
],
[
0.95
],
[
tRNA
],
[
35
],
[
mg/ml
],
[
3.5
],
[
mg/ml
],
[
4
],
[
Magnesium acetate
],
[
200
],
[
mM
],
[
8
],
[
mM
],
[
1.6
],
[
Optiprep
],
[
1.32
],
[
mg/µL
],
[
0.043
],
[
mg/µL
],
[
1.33
],
[
Water
],
[
],
[
],
[
],
[
],
[
10.12
],
[
Total volume (µL)
],
[
],
[
],
[
],
[
],
[
40
],
),
  caption: [
Inner Solution Composition
],
  kind: "table",
  supplement: [Table],
) <inner-solution>

== Outer Solution (Glucose) <outer-solution-glucose>

A 2 M glucose stock solution was prepared and sterilized using a 0.22 µm filter. Based on the measured osmolarity of the inner solution (1060 mOsm/kg), an 850 mM glucose outer solution was prepared from the 2 M stock to approximate the inner solution's osmolarity and reduce cell swelling or shrinkage. The osmolarity of the 850 mM glucose solution was measured at 950 mOsm/kg.

= Preparation of Liposomes <preparation-of-liposomes>

Once the lipid–oil mixture, inner solution, and outer solution were ready, liposomes were prepared according to the following protocol:

+ Add 300 µL of outer solution to a 1.5 mL tube (Tube A).
+ Add 150 µL of the lipid–oil mixture on top of 30 µL of inner solution, then washboard or vortex to form an emulsion.
+ Transfer the resulting milky emulsion onto the outer solution in Tube A.
+ Centrifuge at room temperature for 10 min at 9000 $times$ g.
+ Carefully remove the residual oil layer, leaving 100 µL of solution in Tube A.
+ Resuspend the liposome pellet by gentle pipetting and transfer the suspension to a 384-well glass-bottom plate for microscopic imaging.

= Results <results>

== Osmolarity Balance <osmolarity-balance>

A critical step in liposome preparation is the careful osmotic balance between the inner and outer solutions. The osmolarity of the inner solution was determined using an osmometer with a 10 $mu$L aliquot, yielding a measured osmolarity of 1060 mOsm/kg. Based on this value, the osmolarity of the outer glucose solution was systematically optimized to be 100–150 mOsm/kg lower than the inner solution, corresponding to an outer solution of 850 mM glucose. This osmotic gradient range was selected to maintain liposome integrity during formation\; osmotic gradients outside this range resulted in liposome failure due to either membrane shrinkage (when the outer solution was more hypertonic) or membrane rupture and content leakage (when the outer solution was more hypotonic).

== deGFP expression inside Base Cell <degfp-expression-inside-base-cell>

Successful liposome preparations were imaged on a Cephla Squid+ microscope at 37 °C, and time-series data were collected to monitor deGFP expression. Representative images acquired at the start of incubation and after 3 hours are shown in #link(<image1>)[Figure~1] and #link(<image2>)[Figure~2]. Imaging used two channels: 488 nm for deGFP and 561 nm for rhodamine. At the start of incubation (t = 0), no deGFP signal was detected inside the cells. By the endpoint (t = 3 hours), a substantial fraction of cells exhibited deGFP fluorescence, indicating expression from the DNA template over time through cytosolic transcription and translation.

#tabSet[
#tabItem(heading: [Image 1])[
#show figure: set block(breakable: breakableDefault)
#figure(
  image("files/Image1-528850c3d7203165ceb824471b440b49.png", width: 90%),
  caption: [
Combined green (488 nm) and red (561 nm) fluroescence channels. Timepoint 0 (t = 0) corresponds to 30 minutes after preparation of the inner solution, reflecting the time required to prepare liposomes.
],
  kind: "figure",
  supplement: [Figure],
) <image1>
]

#tabItem(heading: [Image 2])[
#show figure: set block(breakable: breakableDefault)
#figure(
  image("files/Image2-59da3d184a0269f9c7b917136ba571d0.png", width: 90%),
  caption: [
Combined green (488 nm) and red (561 nm) fluroescence channels. Timepoint 0 (t = 0) corresponds to 30 minutes after preparation of the inner solution, reflecting the time required to prepare liposomes.
],
  kind: "figure",
  supplement: [Figure],
) <image2>
]
]

= Conclusions and next steps <conclusions-and-next-steps>

This DevNote presents the initial testing of the Nucleus Base Cell. The Base Cell functions as a foundational synthetic-cell platform engineered to support modular extensions for biotechnological applications and future synthetic cell development.

#bibliography("main.bib", title: text(10pt, "References"), style: "ieee")
