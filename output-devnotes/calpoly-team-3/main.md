---
title: PURExpress Cytosol Assembly with Broccoli 2/mScarlet Reporter
description: |
  This DevNote characterizes a standard PURExpress cell-free protein synthesis reaction using a Broccoli 2 RNA aptamer and mScarlet reporter plasmid. The goal was to test whether transcription and translation could be detected in real time by fluorescence in a defined reconstituted cytosol.
date: 2026-04-03
authors:
  - name: Emily Cook
    affiliation: California Polytechnic University, San Luis Obispo
    email: ecook11@calpoly.edu
  - name: Suna Nguyen
    affiliation: California Polytechnic University, San Luis Obispo
    email: snguy230@calpoly.edu
keywords:
  - PURExpress
  - cell-free protein synthesis
  - Broccoli 2
  - mScarlet
  - RNA aptamer
  - synthetic cell
license: CC-BY-4.0
thumbnail: figures/media/image1.png
collections:
  - REVIEW: inferred — nucleus-core, cal-poly
id: dn-2026-ccby-purexpress-cytosol-assembly-broccoli2-mscarlet
---

# Overview

This DevNote characterizes a standard PURExpress cell-free protein
synthesis reaction using a Broccoli 2 RNA aptamer and mScarlet reporter
plasmid. The goal was to test whether transcription and translation
could be detected in real time by fluorescence in a defined
reconstituted cytosol. The reaction used the CP/CK energy regeneration
system built into standard PURExpress Solution A and included a no-DNA
negative control to confirm that fluorescence depended on
template-driven expression. This experiment follows the CHEM 471
Experiment 1 cytosol assembly workflow and supports later synthetic-cell
work where cytosol performance is tested inside membrane compartments.

# Methods

<!-- RENAMED: "Protocol" → "Methods" to match style guide -->

## Bill of materials

<!-- REORDERED: moved from "Bill of materials" (between Overview and Protocol) to top of Methods to match style guide -->

:::{table} Bill of materials
:label: tbl-bom

| Reagent | Product Name | Manufacturer | Catalog No. | Price | Storage Conditions | Link |
| --- | --- | --- | --- | --- | --- | --- |
| PURExpress Solution A | PURExpress Solution A with CP/CK energy system | New England Biolabs | — | — | -20 °C; thaw and hold on ice | — |
| PURExpress Solution B | PURExpress ribosome solution | New England Biolabs | — | — | -20 °C; thaw and hold on ice; do not vortex | — |
| RNase inhibitor | RNase inhibitor | — | — | — | — | — |
| DNA template | Broccoli 2 mScarlet DNA template, 48.4 ng/µL | — | — | — | — | — |
| DFHBI | Fluorogen for Broccoli aptamer | — | — | — | — | — |
| Nuclease-free H2O | Nuclease-free water | — | — | — | — | — |
| 384-well plate | Black optical 384-well plate | — | — | — | — | — |

:::

## Reaction setup table

:::{table} Reaction setup
:label: tbl-reaction-setup

| Component | Stock Concentration | Final Concentration | +PURE Rep 1 [µL] | +PURE Rep 2 [µL] | -PURE Control [µL] |
| --- | --- | --- | --- | --- | --- |
| Solution A | — | — | 8.0 | 8.0 | 8.0 |
| Solution B | — | — | 6.0 | 6.0 | 6.0 |
| RNase inhibitor | — | — | 0.5 | 0.5 | 0.5 |
| DNA template: Broccoli 2 mScarlet | 48.4 ng/µL | ~5 ng/µL | 2.1 | 2.1 | 0 |
| Nuclease-free H2O | — | — | 1.43 | 1.43 | 3.5 |
| DFHBI | — | — | 2.0 | 2.0 | 2.0 |
| Total | — | — | 20 | 20 | 20 |

:::

## Assembly

- Retrieved PURExpress Solution A and Solution B from -20 °C storage and
  thawed both on ice for 5-10 minutes.

- Kept all components on ice during reaction assembly. Solution B was
  handled gently because it contains ribosomes and should not be
  vortexed.

- Labeled reaction tubes for two positive +PURE reactions and one no-DNA
  negative control.

- Added Solution A, Solution B, RNase inhibitor, DNA template where
  applicable, nuclease-free water, and DFHBI according to the reaction
  setup table.

- Mixed each reaction gently by pipetting up and down 10-15 times until
  homogeneous and clear.

- Briefly spun tubes in a minicentrifuge to collect liquid and remove
  bubbles, then held assembled reactions on ice before plating.

## Plating and plate reader setup

- Transferred reactions to a black 384-well optical plate according to
  the assigned plate map.

- Used technical duplicate wells for positive reactions when possible
  and included the no-DNA control.

- Measured fluorescence kinetics for approximately 4 hours. The lab
  manual plate reader settings for this experiment were excitation 485
  nm, emission 528 nm, 30 °C, and reads every 5-10 minutes.

# Results

<!-- RENAMED: "Results and Observations" → "Results" to match style guide -->

Fluorescence was tracked over 4 hours for both the RNA aptamer signal
and mScarlet protein production. The plotted data showed increasing
fluorescence in the positive reactions, while the no-DNA controls
remained close to baseline. This supports successful transcription and
translation in the PURExpress reaction and confirms that the observed
signal was template-dependent.

:::{figure} figures/media/image1.png
:label: fig-broccoli-mscarlet-kinetics
:width: 75%
Broccoli 2 (48.4 ng/ µL) and mScarlet fluorescence kinetics in a PURExpress CFPS reaction. Broccoli fluorescence was monitored as a readout of RNA aptamer transcription, while mScarlet fluorescence was monitored as a readout of protein production.
:::

# Conclusions

REVIEW: Conclusions not present in source — add before publishing.

# Resources

<!-- RENAMED: "References / source notes" → "Resources" to match style guide — source is a lab manual, not a DOI -->

- CHEM 471 Engineering Synthetic Cells Laboratory Manual, Experiment 1 - Cytosol Assembly.

---

REVIEW: Broccoli 2 and mScarlet Kinetics Graph.ipynb — confirm Nucleus naming convention before publishing.

REVIEW: Team3 Graph Data with Layout.xlsx — confirm Nucleus naming convention before publishing.
