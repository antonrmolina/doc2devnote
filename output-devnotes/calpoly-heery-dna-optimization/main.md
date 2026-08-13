---
title: Effects of a RNase Inhibitor and DNA concentration on Transcription and Translation in a PURExpress batch reaction
description: |
  This experiment aimed to test two conditions and their effect on the PURExpress batch reaction, the presence of an RNase inhibitor and DNA concentration. REVIEW: synthesized from source introduction — verify before publishing.
date: 2026-06-12
authors:
  - name: REVIEW: not listed in source — add before publishing
    affiliation: California Polytechnic State University San Luis Obispo
    email: REVIEW: missing
keywords:
  - PURExpress
  - cell-free expression
  - RNase inhibitor
  - DNA concentration
  - mScarlet
  - mBroccoli
license: CC-BY-4.0
thumbnail: REVIEW: figure files are .emf format (Windows only) — convert to PNG before publishing
collections:
  - REVIEW: inferred — nucleus-core, cal-poly
id: dn-2026-ccby-rnase-inhibitor-dna-concentration-purexpress
---

<!-- RENAMED: "Introduction" → "Overview" to match style guide -->

## Overview

This experiment aimed to test two conditions and their effect on the
PURExpress batch reaction, the presence of an RNase inhibitor and DNA
concentration. The first factor being tested is the effect of RNase
inhibitor on the batch reaction. During protein synthesis, mRNA is
highly susceptible to enzymatic degradation. Although the reagents used
should not contain RNases, RNase inhibitor will be added to protect the
reaction from possible RNase contamination. RNase degrades mRNA, making
it nonfunctional and decreasing the amount of time it can be translated.
Protecting mRNA from degradation should increase the amount of
functional mRNA available for translation, which may lead to greater
protein production.

The second goal of this experiment was to determine the optimal DNA
concentration. Due to reaction kinetics, it is important to avoid
overloading the system with too much DNA, which could reduce the
efficacy of the reaction. Although the system is designed to recycle
ATP, excessive transcription and translation may reduce overall protein
production if there is not enough ATP to sustain the reaction over
longer periods of time.

## Methods

Two fluorescent reporters were used to measure transcription and
translation. The plasmid used in this experiment has two fluorescent
systems. The first is mBroccoli, an RNA aptamer that produces green
fluorescence when it binds to 3,5-difluoro-4-hydroxybenzylidene
imidazolinone, or DFHBI. This signal is used to measure transcription.
The second fluorescent system was the fluorescent protein mScarlet.
mScarlet is a fluorophore that fluoresces red after it is translated.
This dual-fluorophore system allows both transcription and translation
to be monitored simultaneously.

<!-- REORDERED: moved from "Protocol (after Results and Discussion)" to match style guide -->

### Protocol

#### Materials

:::{table} Materials
:label: tbl-materials

| Reagent | Manufacturer | Catalog number |
|---|---|---|
| PURExpress Reaction kit | New England Bio labs | — |
| RNase inhibitor | — | — |
| Broccoli 6 Plasmid 41.8ng/ul | — | — |
| DFHBI | — | — |

:::

#### Reaction Set up

:::{table} Reaction Set up
:label: tbl-reaction-setup

| Component | 3 ng/µL (+RI) | 3 ng/µL (-RI) | 5 ng/µL (+RI) | 5 ng/µL (-RI) | 7.5 ng/µL (+RI) | 7.5 ng/µL (-RI) |
|---|---|---|---|---|---|---|
| Nuclease-free H₂O (µL) | 2.1 | 2.6 | 1.1 | 1.6 | 0 | 0.5 |
| Solution A (µL) pure express kit | 8 | 8 | 8 | 8 | 8 | 8 |
| Solution B (µL) pure express kit | 6 | 6 | 6 | 6 | 6 | 6 |
| RNase Inhibitor-RI (µL) | 0.5 | 0 | 0.5 | 0 | 0.5 | 0 |
| Broccoli 6 Plasmid (µL) | 1.4 | 1.4 | 2.4 | 2.4 | 3.5 | 3.5 |
| DFHBI | 2 | 2 | 2 | 2 | 2 | 2 |
| Total (µL) | 20 | 20 | 20 | 20 | 20 | 20 |

:::

1. Combine in order of the table of the reaction set up, flix the tubes
   to mix, and centrifuge to recombine at bottom of microcentrifuge
   tube.

2. Add 8ul of each solution into wells of 384 black well plates.

3. Set up plate reader with the following specifications and read

   a. Temperature: 37˚C

   b. Read time: 6 hours

   c. Intervals: 10 min

   d. Excitation and Emission values:

      i. Broccoli aptamer + DFHBI :484/505nm

      ii. Mscarlet: 569/594

## Results

<!-- RENAMED: "Results and Discussion" → "Results" to match style guide -->

Both mScarlet and mBroccoli fluorescence increased in a dose-dependent
manner regardless of the presence of RNase inhibitor. The addition of
RNase inhibitor increased mScarlet fluorescence compared to the control
(no RNase inhibitor), at all DNA concentrations (Figure 1), while
decreasing mBroccoli fluorescence (Figure 2). These results suggest that
RNase inhibitor improved protein production despite reducing the
mBroccoli fluorescence signal.

One possible explanation is that the RNase inhibitor protected mRNA from
degradation, allowing it to stay viable for longer. Increased mRNA
stability would enable more protein to be produced from each mRNA,
resulting in higher mScarlet fluorescence. The decrease in mBroccoli
fluorescence may reflect a variety of changes in transcription for
example RNA stability, RNA folding, or Broccoli fluorescence efficiency.
Because mBroccoli fluorescence depends on RNA accumulation, proper RNA
folding, and DFHBI binding, additional experiments would be required to
determine the exact cause of the decreased signal.

REVIEW: Figure 1 panels A, B, C were embedded in Word doc and could not be extracted by pandoc. Source figure shows mScarlet fluorescence for 3 ng, 5 ng, and 7.5 ng DNA +/- RNase inhibitor conditions. Obtain original images from authors before publishing.

**Figure 1: mScarlet in PURExpress batch reaction increases in a dose
dependent manor in response to increased DNA concentration regardless of
RNase inhibitor addition.** mScarlet fluorescence was measured as an
indicator of protein production following cell-free expression reactions
increasing dosage of DNA. A) 3 ng of plasmid DNA +/- RNase inhibitor. B)
5 ng of plasmid DNA +/- RI. C) 7.5 ng of plasmid DNA +/-RI. n=1

REVIEW: Figure 2 panels A, B, C were embedded in Word doc and could not be extracted by pandoc. Source figure shows mBroccoli fluorescence for 3 ng, 5 ng, and 7.5 ng DNA +/- RNase inhibitor conditions. Obtain original images from authors before publishing.

**Figure 2: The addition of RNase inhibitor decreases transcription
levels in PURExpress batch reaction.** Overall transcription increases
in a does dependent manor, however the amount of transcription decreases
when RNase is added. mBroccoli fluorescence was measured as an indicator
of transcription following cell-free expression reactions increasing
dosage of DNA. A) 3 ng of plasmid DNA +/- RNase inhibitor. B) 5 ng of
plasmid DNA +/- RI. C) 7.5 ng of plasmid DNA +/-RI. n=1

Overall, mBroccoli fluorescence increased in a DNA dose dependent manor,
, suggesting greater accumulation of RNA transcripts at higher plasmid
concentrations. Similarly, mScarlet fluorescence increased as DNA
concentration increased, indicating that protein production had not yet
reached a maximum under the conditions tested. Because both
transcriptional and translational outputs continued to increase with DNA
concentration, the optimal DNA concentration for the PURExpress system
was not identified.

At the time of the experiment, maintaining constant concentrations of
the remaining reaction components limited the range of DNA
concentrations that could be tested. As a result, higher DNA
concentrations were not evaluated. Future experiments should examine
additional DNA concentrations to determine the point at which
transcription and translation begin to plateau or decline due to
resource limitations within the PURExpress system.

## Conclusions

REVIEW: Conclusions not present in source — add before publishing.

## Supplemental Materials

### Plate Map

:::{table} Plate Map
:label: tbl-plate-map

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | ... |
|---|---|---|---|---|---|---|---|---|---|
| F | x | 5ng/ul +RI | 5ng/ul -RI | 7.5ng/ul +RI | 7.5ng/ul -RI | 3ng/ul +RI | 3ng/ul -RI |   |   |
| G | x | 5ng/ul +RI | 5ng/ul -RI | 7.5ng/ul +RI | 7.5ng/ul -RI | 3ng/ul +RI | 3ng/ul -RI |   |   |
| H | x | 5ng/ul +RI | 5ng/ul -RI | 7.5ng/ul +RI | 7.5ng/ul -RI | 3ng/ul +RI | 3ng/ul -RI |   |   |
| I | x | 5ng/ul +RI | 5ng/ul -RI | 7.5ng/ul +RI | 7.5ng/ul -RI | 3ng/ul +RI | 3ng/ul -RI |   |   |

:::

### Raw Plate Data

REVIEW: figures/media/image1.emf (raw plate data) is in Windows EMF format — convert to PNG before publishing.

### Lab Manual

Lab manual, protocol above was adapted based on the lab manual below:

REVIEW: figures/media/image2.emf (lab manual excerpt) is in Windows EMF format — convert to PNG before publishing.

### Data Files

REVIEW: DNA_RNase_rawData_copy.xlsx — confirm Nucleus naming convention before publishing.
