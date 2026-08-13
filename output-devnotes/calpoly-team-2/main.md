---
title: "Studying the impact of Class 2 PPK, PaP PPK, on the PUREExpress System"
description: |
  This study investigated the effect of the Class 2 polyphosphate kinase, PaP-PPK, on protein synthesis in the PUREExpress® Cell-Free Protein Synthesis System. PaP-PPK was added as an alternative nucleotide regeneration pathway, and sfGFP fluorescence was monitored over four hours to evaluate protein expression. Reactions containing PaP-PPK produced higher fluorescence than the PUREExpress-only control, with the 0.1X PPK condition resulting in the greatest protein expression. These results suggest that low concentrations of PaP-PPK can enhance energy recycling and improve protein synthesis in the PUREExpress system.
date: 2026-05-29
authors:
  - name: Alyssa Chew
    corresponding: true
    email: achew05@calpoly.edu
    affiliations:
      - name: California Polytechnic San Luis Obispo
  - name: Eva Voss
    email: ecvoss@calpoly.edu
    affiliations:
      - name: California Polytechnic San Luis Obispo
keywords:
  - polyphosphate kinase
  - PPK2
  - PUREExpress
  - cell-free protein synthesis
  - energy regeneration
  - sfGFP
license: CC-BY-4.0
thumbnail: figures/media/image1.jpg
collections:
  - REVIEW: inferred — nucleus-contrib
id: dn-2026-ccby-studying-impact-class2-ppk-pap-ppk-purexpress
---

# Overview

<!-- RENAMED: "Introduction" → "Overview" to match style guide -->

In this experiment, we investigated the effect of the Class 2 polyphosphate kinase, PaP-PPK, on the PURExpress® Cell-Free Protein Synthesis System. A major challenge in cell-free systems is maintaining an efficient energy regeneration pathway, as protein synthesis is highly dependent on ATP availability (Dai et al., 2026). Although PUREExpress supports protein production, its performance can be limited by ATP depletion over time.

PaP-PPK catalyzes the conversion of AMP to ADP using polyphosphate as a phosphate donor. In the standard PURExpress® system, this reaction is primarily carried out by myokinase (adenylate kinase) as part of nucleotide recycling. By introducing PaP-PPK, we aimed to evaluate whether an alternative ADP regeneration pathway could improve energy recycling and enhance protein synthesis in the PUREExpress system.

:::{figure} figures/media/image1.jpg
:label: fig-energy-regen
:width: 75%
Energy regeneration pathways in PUREExpress and the proposed contribution of PaP-PPK.
:::

> REVIEW: (Dai et al., 2026) — citation present in source but no DOI provided. Verify and add DOI before publishing.

# Methods

<!-- REORDERED: "Materials" moved from before "Protocol" to top of Methods to match style guide -->

## Materials

New England PUREExpress® Cell-Free Protein Synthesis System

BioRad SDS Page Gel

## Protocol

Note: All experiments parts were each made in duplicates.

Thaw all reagents on ice. Chill microfuge tubes on ice prior to reaction setup. You'll be running each condition in duplicates, meaning you will have 8 tubes in total.

Flick all tubes to mix before using and keep all reagents on ice during your set up. [Do not vortex Sol B or Ribosomes tubes]

Assemble the following reactions in their respective microcentrifuge tubes, adding the reactants in the order specified. Pipet mix each reactant before assembly:

DNA Template: pJL1-sfGFP stock Conc: 116.1 ng.uL

PURExpress: Mg-Acetate final conc. 15 mM (based on prior experiments)

Close lids to all tubes and microfuge at 5 RPM for ~10s to collect all reagents at the bottom of the tube

Your instructor will assign the plate layout for your samples. Record the grid letter(s) and number(s) in your notebook to later identify your quantification

Pipette mix each solution before transferring 8 uL of each into the 384-well plate. Set the micropipette to 8 μL and stop at the first stop when dispensing to prevent the introduction of bubbles into the sample.

### Preparation of the Protein

:::{table} Protein resuspension composition.
:label: tbl-protein-prep
:align: center
| Component | Resuspension |
| --- | --- |
| PaPPK2 (Pellet) | 0.7g |
| S30 Buffer (uL) | 1400 |
| 1M DTT Buffer (uL) | 2.8 |
| Total (uL) | 1402.8 |
:::

Protein was purified with the Strep-Tactin®XT 4Flow® high capacity Spin Column Kit

### Reaction Setup Tables

:::::{tab-set}

::::{tab-item} Part 1 (5/29) — Addition of Elution Buffer

:::{table} Part 1 reaction setup — Addition of Elution Buffer (Date: 5/29).
:label: tbl-part1
:align: center
| Component | Stock Concentration | Final Concentration | Condition 1: PUREExpress only | Condition 2: PUREExpress+ PPK |
| --- | --- | --- | --- | --- |
| Sol A | — | — | 8 | 8 |
| Sol B | — | — | 6 | 6 |
| DNA template | 116.1 ng/uL | 10 ng/uL | 0.861 | 0.861 |
| Mg-Acetate | 200 mM | 0.15 mM | 0.00 | 1.5 |
| PolyP | — | — | 0.00 | 1.20 |
| PPK2 | Uncharacterized | NIL | 0.00 | 0.70 |
| Elution Buffer (BXT) | — | — | 0.7 | NIL |
| Water | NIL | — | 3.58 | 0.88 |
| Total | — | — | 20 | 20 |
:::

::::

::::{tab-item} Part 2 (6/3) — Addition of Poly P, Magnesium Ions, Elution Buffer

:::{table} Part 2 reaction setup — Addition of Poly P, Magnesium Ions, Elution Buffer (Date: 6/3).
:label: tbl-part2
:align: center
| Component | Stock Concentration | Final Concentration | Condition 1: PUREExpress only | Condition 2: PUREExpress+ PPK |
| --- | --- | --- | --- | --- |
| Sol A | — | — | 8 | 8 |
| Sol B | — | — | 6 | 6 |
| DNA template | 116.1 ng/uL | 10 ng/uL | 0.861 | 0.861 |
| Mg-Acetate | 200 mM | 0.15 mM | 1.5 | 1.5 |
| PolyP | — | — | 1.20 | 1.20 |
| PPK2 | Uncharacterized | NIL | 0.00 | 0.70 |
| Water | NIL | — | 0.88 | 0.88 |
| Elution Buffer (BXT) | — | — | 0.7 | 0.7 |
| Total | — | — | 20 | 20 |
:::

::::

::::{tab-item} Part 3 (6/4) — PPK Concentration Dilutions

:::{table} Part 3 PPK/PolyP concentration dilutions (Date: 6/4).
:label: tbl-part3-dilutions
:align: center
| Component | Stock Concentration | PPK/PolyP 1X | PPK/PolyP 0.2X (1:5) | PPK/PolyP 0.1X (1:10) | PPK/PolyP 0.05 X (1:20) |
| --- | --- | --- | --- | --- | --- |
| Purified PPK (uL) | Uncharacterized | 2 | 2 | 2 | 2 |
| BXT (uL) | NIL | 0 | 8 | 18 | 38 |
:::

REVIEW: GFP Fluorescence Kinetics.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: Data Analysis Bradford Assay.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: PURExpress Calculations.xlsx — confirm Nucleus naming convention before publishing.

::::

:::::

# Results

<!-- RENAMED: "Results and Observations" → "Results" to match style guide -->

## Part 1: Experiment 4 PUREExpress + PPK reaction set up

:::{figure} figures/media/image6.png
:label: fig-part1-fluorescence
:width: 75%
REVIEW: no caption present in source for this figure — add before publishing.
:::

This result supports our hypothesis that PaP-PPK can improve energy regeneration in PUREExpress based on earlier experiments. During translation, ATP is consumed to charge tRNAs and support protein synthesis, which can lead to ATP depletion over time. PaP-PPK uses polyphosphate to help regenerate adenine nucleotides, increasing the availability of ADP/ATP for continued translation. Therefore, the higher fluorescence observed in the PPK condition makes sense because improved ATP recycling would allow the PUREExpress system to sustain sfGFP production for longer. Overall, these results suggest that adding PaP-PPK and polyphosphate can enhance protein output by supplementing the existing energy regeneration system.

## Part 2: Addition of Poly P, Magnesium Ions, Elution Buffer

:::{figure} figures/media/image3.png
:label: fig-part2-kinetics
:width: 75%
Translation Kinetics sfGFP (RFU) vs. Time (Hours). Transcription kinetics of PURExpress with and without additional energy system (PPK). sfGFP (excitation 485 nm, emission 516 nm) fluorescence measured every 10 min at 37°C over 4 hours.
:::

<!-- REVIEW: source labels this figure "Figure 1" — same label is reused for the Part 3 kinetics figure (image4.png). Source has a figure numbering error. Captions reproduced verbatim. -->

## Part 3: Addition of various PPK concentrations — PPK Concentration Dilutions

:::{figure} figures/media/image4.png
:label: fig-part3-kinetics
:width: 75%
Translation Kinetics sfGFP (RFU) vs. Time (Hours). Transcription kinetics of PURExpress with and without additional energy system (PPK). sfGFP (excitation 485 nm, emission 516 nm) fluorescence measured every 10 min at 37°C over 4 hours.
:::

<!-- REVIEW: source labels this figure "Figure 1" — duplicate of the label used for image3.png in Part 2. Source has a figure numbering error. Caption reproduced verbatim. -->

:::{figure} figures/media/image5.png
:label: fig-part3-endpoint
:width: 75%
Comparison of endpoint RFU observed for each sample compared to PPK dosage
:::

# Conclusions

<!-- REORDERED: two "Conclusion:" subsections extracted from within Results and placed under # Conclusions H1 to match style guide -->

## Part 2

In the presence of polyphosphate and magnesium ions, the addition of PaP-PPK resulted in lower sfGFP expression compared to the standard PUREExpress system, indicating that the dual-energy system did not improve protein production under the conditions tested. This result differs from earlier experiments in which PaP-PPK appeared to enhance expression, suggesting that omission of PolyP and Mg²⁺ may have led to an overestimation of the beneficial effects of PaP-PPK.

## Part 3

The data confirmed previous conclusions of how addition of PPK resulted in a decrease in sf-GFP expression, in particular the 0.05X dosage produced an endpoint sfGFP RFU higher than the PUREExpress control. This indicates that there could possibly be a PPK dosage in which can coordinate more effectively with the myokinase reaction. However, there is variability that affects the data greatly, especially in a low dosage experiment such as this.

## Limitations and Sources of Error

<!-- REVIEW: "Limitations and Sources of Error" section is not present in the DevNote style guide — review placement before publishing. -->

Several factors may have contributed to variability in the experimental results. Differences in pipetting technique and reaction preparation between student groups may have introduced inconsistencies across replicates. Additionally, repeated freeze-thaw cycles of PUREExpress reagents, enzymes, and other reaction components may have reduced reagent activity, affecting protein expression levels. Variations in reagent handling, incubation conditions, and timing during reaction setup could also have contributed to experimental error.

One potential limitation was the possibility of an unsuccessful PUREExpress reaction setup. Errors in reagent addition, improper mixing, or degradation of critical reaction components could result in reduced sfGFP production independent of the effects of PaP-PPK. Future experiments should minimize freeze-thaw cycles, use freshly prepared reagents when possible, and increase the number of replicates to improve reproducibility and confidence in the results.

# Resources

This work is supported by bnext as well as the Schmidt Sciences grant.
