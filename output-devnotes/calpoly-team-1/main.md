---
title: Combining Class I & Class II PPK2 in Synthetic Cells
description: |
  REVIEW: synthesized — verify before publishing
date: 2026-06-12
authors:
  - name: Jillian Yujuico
    affiliation: California Polytechnic University, San Luis Obispo
    email: jyujuico@calpoly.edu
  - name: Zach Peterson
    affiliation: California Polytechnic University, San Luis Obispo
    email: zpeter06@calpoly.edu
keywords:
  - PPK2
  - cell-free protein synthesis
  - synthetic cells
  - liposome encapsulation
  - enzyme kinetics
  - PURExpress
license: CC-BY-4.0
thumbnail: figures/media/image1.png
collections:
  - REVIEW: inferred — nucleus-core, cal-poly
id: dn-2026-ccby-combining-class-i-class-ii-ppk2-synthetic-cells
---

<!-- RENAMED: "A. Overview" → "# Overview" to match style guide -->
# Overview

Characterize the enzyme kinetics of different enzyme variants involved
within the PPK2 energy system family. The goal is to isolate and purify
different polyphosphate-based enzymes then evaluate both their
independent and encapsulated kinetic activity. Purification will be
confirmed via SDS-Page. Kinetics will be measured via fluorescence and
microscopy imaging.

# Methods

<!-- REORDERED: moved from "B. Bill of Materials" to top of # Methods to match style guide -->
<!-- RENAMED: "B. Bill of Materials" → "## Bill of Materials" to match style guide -->
## Bill of Materials

<!-- vale nucleus.magnitude-unit-spacing = NO -->
:::{table} Bill of Materials
:label: tbl-bom

| Reagent | Product Name | Manufacturer | Catalog No. | Price | Storage Conditions | Link |
|---------|-------------|--------------|-------------|-------|--------------------|------|
| POPC | 16:0-18.1 PC 25 mg/mL | Avanti Lipids | 850457C | $435.00 | -20C | [16:0-18:1 PC (POPC) \| 26853-31-6 \| Avanti Research](https://www.avantiresearch.com/en-gb/products/product/850457-160-181-pc-popc) |
| Liss-Rhod-PE | 16:0 Liss Rhod PE 1 mg/mL | Avanti Lipids | 810158C-1mg | $281.67 | -20 C | [16:0 Liss Rhod PE \| 384833-01-6 \| Avanti Research](https://www.avantiresearch.com/en-gb/products/product/810158-160-liss-rhod-pe) |
| Cholesterol | cholesterol (D7) 1EA | Avanti Lipids | A84100M | $193.72 | -20 C | [cholesterol (D7) \| 83199-47-7 \| Avanti Research](https://www.avantiresearch.com/en-gb/products/product/4100-cholesterol-d7) |
| Mineral Oil | Mineral oil, mixed weight | Thermo Scientific | AC415080010 | $53.40 | RT | [Mineral oil, pure 1 L \| Buy Online \| Thermo Scientific Chemicals \| thermofisher.com](https://www.thermofisher.com/order/catalog/product/415080010?SID=srch-srp-415080010) |
| Glucose | D-(+)-Glucose, 99% | Thermo Scientific | A16828-36 | $41.65 | 4C | [D-(+)-Glucose, anhydrous, 99% 500 g \| Buy Online \| Thermo Scientific Chemicals \| thermofisher.com](https://www.thermofisher.com/order/catalog/product/A16828.36) |
| PURE | PURExpress | NEB | E6800S | $295.00 | -80 C | [PURExpress® In Vitro Protein Synthesis Kit \| NEB](https://www.neb.com/en-us/products/e6800-purexpress-invitro-protein-synthesis-kit) |
| RNase Inhibitor | RNase Inhibitor, Murine | NEB | M0314S | $81.00 | -20 C | [RNase Inhibitor, Murine \| NEB](https://www.neb.com/en-us/products/m0314-rnase-inhibitor-murine) |
| OptiPrep | OptiPrep™ Density Gradient Medium | Sigma Aldrich | D1556-250ML | $373.00 | 4 C | [OptiPrep Density Gradient Medium, 60 (w/v) iodixanol in water](https://www.sigmaaldrich.com/US/en/product/sigma/d1556?msockid=1cb4fd24af9b66ff2777e832ae1867b1) |
| DNA | pjl1-sfGFP | — | — | — | -20 C | — |
| FTPPK2-I | — | — | — | — | -80 C | — |
| AJPPK2-II | — | — | — | — | -80 C | — |

:::
<!-- vale nucleus.magnitude-unit-spacing = YES -->

<!-- RENAMED: "C. Protocol" → "## Protocol" to match style guide -->
## Protocol

### Part I — Protein Purification; Repeat for each enzyme class.

1\. Add a 1g : 2ml ratio of cell pellet to S30 buffer

2\. Supplement DTT to your buffer, 2 mM final concentration

3\. Sonicate: 5x bursts of 10 sec on, 10 sec off @ 50% amplitude. Record
total joules delivered \*must keep tube ice cold during sonication

4\. Centrifuge at 14,000rpm for 10 minutes @ 4C

5\. Collect supernatant and transfer to a new tube, keep on ice

6\. Perform spin-column as instructed via provided supplementary
material

a\. Use Buffer W for wash

b\. Use Buffer E for elution

**Spin Column Procedure — Adapted from iba by Cube Biotech Spin Column
Kit Protocol — Version: PR137-0004. Revision date: 10.11.2025**

- Strep-Tactin®XT 4Flow® high capacity Spin Column Kit

1\. Resuspend Strep-Tactin®XT 4Flow® high capacity resin and pipet 100
µL of the 50% suspension into a spin column leading to a column bed
volume of 50 µL

2\. Centrifuge the sample (maximum speed, 5 min 4ºC) to remove
aggregates

3\. Apply up to 500 µL sample to the spin column, close the column lid
and incubate at room temperature with constant movement (rolling or
shaking) for 5-30 min. For most purposes, 5 min are sufficient, but a
longer incubation can increase the amount of capture d protein,
especially for large proteins (≥ 90 kDA)

4\. After incubation, open the lid and break off the lower column seal.
Place the spin column into a reaction tube and centrifuge for 30 sec at
500 x g.

5\. Collect the flow-through for SDS-PAGE analysis and place the spin
column into a new reaction tube. Apply 500 µL 1xBuffer W and centrifuge
for 30 seconds at 700 x g (Optional: usually, one washing step is
sufficient to obtain a highly pure protein, but this step can be
repeated if higher purity is required)

6\. Collect the washing fraction for SDS-PAGE analysis and place the
spin column into a new reaction tube.

> A. For fast processing, apply 150-200 µL 1x Buffer BXT, close the spin
> column lid and vortex briefly. After 5 minutes of incubation without
> movement, vortex again briefly, open the spin column lid and
> centrifuge for 30 seconds at 700 x g.
>
> B. For maximum target protein concentration, apply 50 -- 100 µL 1x
> Buffer BXT, close the spin column lid and vortex briefly. After 5
> minutes of incubation without movement, vortex again briefly, open the
> spin column lid and centrifuge for 30 seconds at 700 x g. Repeat this
> step one to two times. At least 8-% of the target protein will be in
> the first elution fraction.

### Part II — PPK Screen and Standard Curve

1.  Make a 1 mg/ml BSA solution from your 10 mg/mL BSA stock

    a.  40 µL of 10 mg/mL BSA stock with 360 µL of DI water

2.  Since stock concentration of PPKs are unknown, run a dilution screen
    for each protein class to identify which dilution falls within the
    standard curve. Incubate at room temperature for 10 minutes prior to
    running

    a.  See Table 1 in supplementary information.

3.  Make BSA standard curve solutions following the table below. Run
    each standard in duplicate, incubating at room temperature for 10
    minutes before running

    a.  See Table 2 in supplementary information

4.  Compare A595 values to your standard curve. Identify the dilution
    factors whose A595 falls between S1 and S5, ideally near the
    midpoint.

5.  Generate standard curve and calculate concentrations

    a.  Exclude blank from regression

        i.  Plot A595 vs BSA concentration in µg/mL for S1-S5

        ii. Fit linear trendline and calculate the concentration of each
            PPK2 using the trendline equation

            1.  Multiply by the dilution factor used in part 4 to get
                the original stock concentration

:::{table} PPK2 dilutions.
:label: tbl-ppk2-dilutions

| Sample | Dilution | Protein (µL) | DI Water (µL) | Bradford (µL) |
|--------|----------|--------------|---------------|---------------|
| PPK2 Class II (Elution 1) | 1:2 | 2.5 | 6.25 | 37.5 |
| PPK2 Class II (Elution 1) | 1:5 | 1 | 10 | 37.5 |
| PPK2 Class II (Elution 1) | 1:10 | 0.5 | 11.25 | 37.5 |

:::

**Table 1.** PPK2 dilutions.

:::{table} Bradford dilutions.
:label: tbl-bradford-dilutions

| Standard | 1 mg/mL BSA (µL) | DI Water (µL) | Bradford (µL) | Final BSA concentration (µg/mL) |
|----------|------------------|---------------|---------------|---------------------------------|
| Blank | 0 | 12.5 | 37.5 | 0 |
| S1 | 1.56 | 10.94 | 37.5 | 125 |
| S2 | 3.13 | 9.38 | 37.5 | 250 |
| S3 | 6.25 | 6.25 | 37.5 | 500 |
| S4 | 9.38 | 3.43 | 37.5 | 750 |
| S5 | 12.5 | 0 | 37.5 | 1000 |

:::

**Table 2.** Bradford dilutions.

### Part III — SDS-PAGE

1.  Add 6uL of your protein sample with 3uL of 4x Laemmli Dye and 4µL of
    water in a PCR tube

    a.  DI water is okay and in-fact preferred

2.  Add 1uL of your 1M DTT into the PCR tube\*\* (*DTT may have already
    been added*)

3.  Incubate sample at 95C for 5 minutes to denature protein

4.  Centrifuge your samples at max speed for 3 minutes.

5.  Load 10 uL of each sample onto the gel

6.  Remove gel from packaging and take off bottoms strip and comb on top

7.  Place gel into the gel apparatus and ensure that it is sealed
    properly

8.  Rinse wells with DI water first and then dab the wells with a Kim
    wipe and make sure to get all the water out of the well

9.  Pour running buffer in the inner chamber until the buffer covers the
    wells

10. Fill the outer chamber until you reach the "two gel" mark with
    running buffer

11. Run this buffer at 150V for about 10 minutes

12. Proceed to load 12uL of your protein sample into your gel including
    ladder

13. Run your gel at 200V for 40 minutes

14. Remove your gel cassette from the apparatus and image your results

### Part IV — Activity Assays

#### ATP Assay

**Materials:**

PPK2 Reaction Buffer: 50mM Tris-HCL, 10mM MgCl2, 0.5mM DTT, and 0.1mg/mL
BSA

-2x Substrates Mix: 10mM AMP or ADP and 100mM PolyP

\- CellTiter-Glo Reagent

-ATP Standard Solutions

-Opaque white 96-well plate

-1.5mL tubes

**\
Protocols:**

**Part A: Prepare reagents and reaction tubes**

Before starting, thaw all reagents on ice and pre-equilibrate
CellTiter-Glo 2.0 to room temperature (project reagent from light).

1.  Label two 1.5 mL microfuge tubes "A" and "B" for the duplicate
    reactions. Keep on ice.

2.  Prepare the PPK2 Enzyme Mix:

    20 µL purified PPK2 enzyme \[Enzyme
    Name:\_\_\_\_\_\_\_\_\_\_\_\_Enzyme Class: \_\_\_\_\_\_\]\
    180 µL of PPK2 Reaction Buffer.

    *Pipet mix gently. Keep on ice.*

3.  Confirm the 2× Substrate Mix is fully thawed, invert to mix.

4.  *On ice:* prepare 6 microfuge tubes per replicate (A and B) for
    time-point aliquots by labeling:

- Replicate A: A0, A1, A2, A4, A6, A10

- Replicate B: B0, B1, B2, B4, B6, B10\
  (A/B = replicates; \# = time point in minutes)

5.  *On ice:* prepare 6 microfuge tubes per replicate for 1/10×
    dilutions by labeling:

- A0d, A1d, A2d, A4d, A6d, A10d

- B0d, B1d, B2d, B4d, B6d, B10d

  ( "d" denotes the diluted aliquot at that time point).

- To each tube, add 18 µL of H2O.

  You will have a total of 24 tubes on ice.

**Part B: Assemble the reaction master mix**

Assemble the two replicate reactions in tubes A and B. Each reaction
master mix is 150 µL total. You will be removing the six time point
aliquots from this tube.\
*\*Read steps 6-9 before preparing the reaction master mix\*\*
You will be collecting time points so its essential that you are ready
for next steps before you mix the enzyme with the substrate*\
\
\*Are you ready for steps 6-9?*

6.  To each of A and B (on ice):

    add 75 µL of PPK2 Enzyme Mix (from part A). Do NOT add the substrate
    mix yet.

7.  Have the 2× Substrate Mix, a timer, and a P200 set to 22 µL ready.

    Plan the order: you will add substrate to reaction A first, then
    reaction B, staggered \~15 seconds apart so each replicate runs its
    own timer.

8.  Have all 12 time-point tubes (A0--A10, B0--B10) ready on on ice

:::{table} Reaction Master Mix
:label: tbl-reaction-master-mix

| Reaction Master Mix Component | Volume per tube (µL) |
|-------------------------------|---------------------|
| PPK2 Enzyme Mix | 75 |
| 2× Substrate Mix (ADP or AMP + PolyP)<br>For Class I → ADP<br>For Combo Class I & II → AMP | 75 |
| Total | 150 |

:::

**Part C: Start the reaction and collect time points**

9.  Add 75 µL of 2× Substrate Mix to reaction A, pipet mix three times,
    start the timer, and IMMEDIATELY pull 22 µL into tube A0/B0 tubes on
    ice.

10. Incubate reaction tubes A and B in the 30 °C heat block. *Start you
    timers*.

11. At t (min) = 1, 2, 4, 6, and 10 minutes (per replicate clock),
    remove 22 µL aliquots from the reaction tubes A and B into the
    corresponding time-point tubes on ice (e.g., A1, A2, ... or B1, B2,
    ...).

12. After the t = 10 min sample is taken, place the reaction tube back
    on ice. The reaction is finished.

- Prepare a 1/10 dilution:

  For each time point aliquot (e.g., A0, A1, A2, ... or B0, B1, B2,
  ...), transfer 2 ul to the corresponding 1/10 dilution tubes (A0d,
  A1d, A2d, ... or B0d, B1d, B2d...) containing 18 ul H2O.

13. Prepare ATP standard curve. ATP dilutions have been provided for
    you.

- Transfer 20 ul of each ATP dilution to a new microfuge tube, label
  appropriately

**Part D: Add CellTiter-Glo 2.0 and read**

14. Using the 8-channel multichannel pipette and a reservoir (if
    available), dispense 20 µL of CellTiter-Glo 2.0 Reagent into each of
    the 24 tubes (A & B time points, 1x and 1/10 dilutions).\
    Goal: complete reagent addition for all 24 samples within 1--2
    minutes.

15. Add 20 uL CellTiter-Glo 2.0 Reagent to each ATP dilution aliquot.

16. Briefly vortex each tube to mix. Cover with foil.

17. Incubate at room temperature in the dark for 10 minutes to
    equilibrate signal.

**Part E: Load the plate**

Use rows A through F of a 96-well white opaque plate per group (roughly
one third of the plate). Example layout is:

:::{table} Plate layout
:label: tbl-plate-layout

| Section | Wells used | Contents |
|---------|------------|----------|
| 1× time course (Replicate A) | A1--A6 | 40 µL from A0--A10 |
| 1× time course (Replicate B) | B1--B6 | 40 µL from B0--B10 |
| 1/10× time course (Replicate A) | C1--C6 | 40 µL from A0d--A10d |
| 1/10× time course (Replicate B) | D1--D6 | 40 µL from B0d--B10d |
| ATP standard curve (8 points) | E1--E8 | 40 µL per standard (provided to you) |
| Buffer blank | F1 | 40 µL of 1× PPK2 Reaction Buffer (no ATP, no enzyme) |

:::

18. Pipette 40 µL from each time-point tube into its assigned well

19. Pipette 40 µL of each ATP standard into the plate

20. Pipette 40 µL of 1× Reaction Buffer into well F1 as a no-ATP blank.

**Part F: Analysis**

21. Read total luminescence on the GloMax Discover luminometer
    (*Protocol: CellTiter-Glo*). Read all wells in a single pass; do not
    pause between wells.

22. Record raw luminescence values for analysis.

23. Plot raw luminescence (y) vs \[ATP\] (x) for the standard curve on a
    log-log plot. Fit a linear region (typically spanning \~3 orders of
    magnitude).

24. For each time-point well, decide which dilution (1× or 1/10×) falls
    within the linear range. Use that dilution to back-calculate \[ATP\]
    in the original reaction (multiply 1/10× values by 10).

25. Plot \[ATP\] vs time for each replicate. Compute the mean and
    standard deviation across the two replicates at each time point.

26. Determine the initial rate (nM ATP / min) from the linear portion of
    the early time course (typically t = 0 to t = 4 min).

27. Using the protein concentration from Experiment 8, compute apparent
    specific activity in nmol ATP / min / mg protein.

28. Report whether the enzyme is active, with the supporting numbers and
    a qualitative comment on the consistency between the 1× and 1/10×
    readings.

29. Include all graphs in your notebook.

#### ADP Assay (Devised by Dr. Oza and Alyssa (Team 2)

:::{table} ADP Assay protocol
:label: tbl-adp-assay

| Steps | Notes |
|-------|-------|
| 1.Thaw all reagents on ice and pre-equilibrate CellTiter Glo 2.0 at room temperature | Wrap the Cell Titer Glo in foil to protect it from the light |
| 2. Label the tubes as follows:<br><br>PPK Enzyme Mix -- A & B<br><br>A replicates at time (minutes) -- A0, A1, A2, A4, A6, A10<br><br>B replicates at time (minutes) -- B0, B1, B2, B4, B6, B10<br><br>Dilutions of replicates<br><br>A0d, A1d, A2d, A4d, A6d, A10d<br><br>B0d, B1d, B2d, B4d, B6d, B10d<br><br>(Total of 26 tubes, duplicate A&B) | Addition order<br><br>Buffer<br><br>ADP<br><br>PPK<br><br>No Dilutions were made |
| 3. The addition of the 2X Substrate Mix is time sensitive, so only add them in the following order when ready<br><br>PPK Master Mix:<br><br>Purified PPK Enzymes -- 20 uL<br><br>Reaction Buffer -- 180 uL<br><br>PPK Master Mix:<br><br>Add to both tubes (A&B) -- 75 uL<br><br>2X Substrate Mix:<br><br>Add to both tubes (A&B) -- 75 uL | Stagger the addition of 2X Substrate Mix for tubes A & B by 30 -- 60 secs |
| 4. Prepare a timer and remove 22 uL at a time from the reaction tube during each time point:<br><br>A0 = Reaction Tube A, Time: 0 minutes<br><br>Record the actual time the sample was taken out and keep all samples on ice | Time Stamps:<br><br>A0<br>A1<br>A2<br>A4<br>A6<br>A10<br><br>B0<br>B1<br>B2<br>B4<br>B6<br>B10 |
| 5. Make the dilutions for each aliquot by pipetting the following:<br><br>All dilution tubes<br><br>Aliquot - 2uL<br><br>DI Water -- 18 uL | No Dilutions were made |
| 6. Add 50 uL of the Kinase Detection Reagent to each dilution aliquot | — |
| 7. Briefly vortex each tube to mix, cover with foil | — |
| 8. Incubate the tubes at room temperature in the dark for 10 minutes | — |
| 9. Into a 96 well plate, pipette the following:<br><br>Aliquot tubes (6 in total)<br><br>ATP Standards (4 wells)<br><br>1X Reaction Buffer (Blank)<br><br>ADP-GLO Reagents<br><br>Incubate for 40 mins | — |
| 10. Equilibrate the Kinase Detection Buffer + Kinase Detection Substrate at room temperature<br><br>Transfer the entire volume of the buffer into the substrate to make the Kinase Detection Reagent<br><br>Mix by gently vortexing | Used premade Kinase Detection Reagent |
| 11. Add to the reaction wells in the plate<br><br>Incubate for 40 minutes | — |
| 12. Record Luminescence | — |

:::

### Part V — Encapsulation

#### PURExpress Encapsulation

1.  Label three sets of 3 tubes, for each of the following:

    a.  E---oil emulsion (E1, E2, E3)

    b.  T---transfer (T1, T2, T3)

    c.  L---liposomes (L1, L2, L3)

\*1 refers to PURExpress only, 2 refers to Class I only, 3 refers to
Class II only, and 4 refers to the Class mixture

2.  Create the PURExpress cytosol for encapsulation. Keep all reagents
    and reactions on ice throughout. Preparation on ice ensures that
    protein expression does not begin during assembly.

    a.  Pipette the following reagents in the tube labelled E in order
        from top to bottom using the appropriate pipettes.

:::{table} PURExpress encapsulation reagents
:label: tbl-purexpress-reagents

| Reagents (µL) | E1 (PURExpress) | E2 (Class I) | E3 (Class II) | E4 (Mix) |
|---------------|-----------------|--------------|---------------|----------|
| Nuclease-free H2O | 6.27 | 3.97 | 3.97 | 3.97 |
| Solution A | 26 | 26 | 26 | 26 |
| Solution B | 19.5 | 19.5 | 19.5 | 19.5 |
| Enzyme | 0 | 2.3 | 2.3 | 2.3 |
| PolyP | 4.2 | 4.2 | 4.2 | 4.2 |
| Mg-Acetate | 4.5 | 4.5 | 4.5 | 4.5 |
| RNAse Inhibitor | 1.4 | 1.4 | 1.4 | 1.4 |
| Optiprep | 2.1 | 2.1 | 2.1 | 2.1 |
| DNA (sf-GFP) | 6.03 | 6.03 | 6.03 | 6.03 |
| Total | 70 µL | 70 µL | 70 µL | 70 µL |

:::

a.  Pipette mix each reaction, then centrifuge the reaction at 5000g
    \[6685 RPM for tabletop centrifuges (r=10 cm)\] for 10-30 seconds to
    spin down bubbles in the reaction.

3.  **Check the osmolarity** of your cytosol using a Vapor Pressure
    Osmometer before encapsulation.

    a.  Press "open" on the osmometer and use tweezers to place a
        circular sample disc on the reading area.

    b.  Pipette 10μL of your cytosol onto the disc and press "close".

    c.  Read and record the osmolarity.

4.  **Plate reader aliquots.** Pipette mix the cytosol solution before
    transferring 8 uL into two wells of a 384-well plate for kinetics
    quantification on the Synergy. Set the micropipette to 8 μL and
    **stop at the first stop** when dispensing to prevent the
    introduction of bubbles into the sample.

**Encapsulate PURExpress into Liposomes**

1.  You will be given a range of glucose dilutions labeled with their
    concentration and osmolarity. Add 300 μL of the correct glucose
    outer solution, according to the osmolarity of your PURE cytosol, to
    the tube labeled T.

2.  Add 150 μL of the lipid-oil mixture to the top of the PURE reaction
    in tube E.

3.  Emulsify the lipid-oil and PURE mixture by running the tube along a
    row of empty slots on the 1.5 mL tube rack (watch instructional
    video for a visual aide on how to do this). Run it down 40--50 times
    until the solution forms a stable emulsion with an even milky color.

4.  Slowly pipette the entire emulsion **down the side** of the
    corresponding T tube, so that the emulsion is layered on top of the
    glucose solution.

5.  Centrifuge the T tube at 9000 g \[8970 RPM for tabletop centrifuges
    (r=10 cm)\] for 10 min at room temperature to pellet the liposomes.

6.  Extract the liposomes from the T tube:

    a.  Remove the oil layer and lipid debris from the top (supernatant)
        of the T tube by gently pipetting with a 1000 μL pipette set to
        200 μL. Begin at the top of the mixture and aspirate from the
        solution surface as the liquid level descends in the tube.
        Dispose of supernatant.

    b.  Once the majority of supernatant is removed, *extract liposomes
        by pipetting 50 μL of pellet and outer solution from tube T and
        transfer to the respective liposome tube L*. **Do not transfer
        the entire solution.** You now have synthetic cells!

7.  Hold synthetic cells on ice in the L tube until you are prepared to
    begin measurement.

8.  Pipet 30 µL of each sample into a 384-well glass bottom plate and
    transfer to microscope.

9.  Once data is complete, perform analysis via Image J (fiji) software.

#### Cytosol Encapsulation

Repeat steps 1-9 above (from Part I); however do not follow reagent
table in 2a., instead adhere to adjusted conditions below.

:::{table} Cytosol encapsulation reagents
:label: tbl-cytosol-reagents

| Reagents (µL) | E1 (Cytosol) | E2 (Class I) | E3 (Class II) | E4 (Mix) |
|---------------|--------------|--------------|---------------|----------|
| S Mix | 21 | 21 | 21 | 21 |
| tRNA | 7 | 7 | 7 | 7 |
| P Mix | 8.4 | 8.4 | 8.4 | 8.4 |
| Ribosomes | 12.6 | 12.6 | 12.6 | 12.6 |
| RNAse Inhibitor | 3.5 | 3.5 | 3.5 | 3.5 |
| DNA template | 3.23 | 3.23 | 3.23 | 3.23 |
| Mg-Acetate | 0 | 2.8 | 2.8 | 2.8 |
| Enzyme | 0 | 3.23 | 3.23 | 3.23 |
| PolyP | 0 | 4.2 | 4.2 | 4.2 |
| Nuclease-free H2O | 11.39 | 1.94 | 1.94 | 1.94 |
| Optiprep | 2.1 | 2.1 | 2.1 | 2.1 |
| Total | 70 µL | 70 µL | 70 µL | 70 µL |

:::

# Results

<!-- RENAMED: "D. Results, Observations, and Conclusions" → "# Results" + "# Conclusions" to match style guide -->

## Assays

Paste results and observations
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

\##failure modes. Thoughts on why something didn't work. What
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

(mention limiations and failures)
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

Then conclude
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

Recorded mass of pellets

**FTPPK2 Class I pellet: 0.89g**

**AJPPK2 Class II pellet 0.9g**

Joules delivered through sonicator:

**FTPPK2 Class I pellet: 220 J**

**AJPPK2 Class II pellet 208 J**

## Purification and SDS-PAGE

:::{figure} figures/media/image1.png
:label: fig-sds-page-gel
:width: 75%
SDS-PAGE stained with coommassie blue. The ladder band was a mixture of 10 recombinant proteins (10--250 kD), 8 blue-stained bands, and 2 pink reference bands (25 and 75 kD). The class I FtPPK2-I Fusion had an expected MW of 77 kDa, and its wells were filled from left to right in the following order: Ladder, Elution A (EA), EB, Flow-through A (FTA), FTB, Wash A (WA), and WB. The class II AjPPK2-I Fusion had an expected MW of 100.7 kDa, and in the image, the wells appear from left to right in the following order: WA, WB, FTA, FTB, EA, EB, and Ladder.
:::

:::{figure} figures/media/image2.png
:label: fig-sds-page-mw-curve
:width: 75%
SDS-PAGE Curve of molecular weight and relative mobility of the Standard SDS-PAGE Ladder and the Class I (left figure) and Class II (right figure). Linear relationship present between log molecular weight with respect to distance migrated (measured or relative distances) for the protein standards. These estimates of molecular weights are reasonably accurate, ±5%
:::

**Conclusion:**

As seen in Figure I, the proteins were pure by SDS-PAGE and EA was used
for further steps of the experiment. For both Class I and Class II
proteins, each of the proteins fell within range of their expected
molecular weight once graphed as seen in Figure 2

## Bradford Assay

:::{figure} figures/media/image3.png
:label: fig-bradford-assay
:width: 75%
Bradford Assay using Standard BSA concentrations to determine concentrations of the proteins. Each Class had 1:10, 1:5, and 1:2 dilutions created to determine their concentrations with respect to the absorbances. The samples were incubated at room temperature for 5 minutes. They were then read at 595nm for absorbance.
:::

**Deviations:** There were originally two BSA Standards for Class I
PPK2. However, the data points for the second BSA standard did not fall
in the expected curve and were determined that they should be excluded
from the data analysis.

**Conclusion:**

The class I protein dilutions all fell within \~200 µg/mL, while the
class II 1:10 and 1:5 dilutions also fell within \~200 µg/mL, while its
furthest data point went up to \~650 µg/mL.

## PPK2 activity ASSAYS

<!-- REVIEW: source labels this "Figure 3", duplicating the Bradford figure number —reviewer to reconcile -->
:::{figure} figures/media/image4.png
:label: fig-atp-standard-curve
:width: 75%
ATP Standard Curve. Relative luminescence units (RLU) of 10{sup}`-9`, 10{sup}`-8`, 10{sup}`-7`, & 10{sup}`-6` M ATP on a 96-well white opaque plate on the GloMax Discover luminometer at 37ºC.
:::

Deviations: In the original protocol/lab manual, it calls for a log-log
plot. However, we decided to plot

:::{table} Class I FtPPK2-I ATP, Class II AjPPK2-I ADP, Combination of Class I FtPPK2-I & II AjPPK2-I ATP, and Class III MnPPK2-I ATP time-based assay. Relative luminescence units (RLU) of assay taken on a 96-well white opaque plate on the GloMax Discover luminometer at 30ºC over the course of 10 minutes with assays examined at the 0{sup}`th`, 1{sup}`st`, 2{sup}`nd`, 4{sup}`th`, 6{sup}`th`, and 10{sup}`th` minute. ATP/ADP concentrations calculated of the different proteins and their different dilutions using their RLU with the equation on the graph of figure 3.
:label: tbl-activity-assay

| Condition | Dilution | Time (min) | RLU | Concentration (M) |
|-----------|----------|------------|-----|-------------------|
| Class II ADP | (1/40) Avg | 0 | 6.13E+05 | [ADP] 6.33E-06 |
| Class II ADP | (1/40) Avg | 1 | 9.40E+05 | [ADP] 9.60E-06 |
| Class II ADP | (1/40) Avg | 2 | 1.27E+06 | [ADP] 1.29E-05 |
| Class II ADP | (1/40) Avg | 4 | 1.53E+06 | [ADP] 1.55E-05 |
| Class II ADP | (1/40) Avg | 6 | 1.41E+06 | [ADP] 1.43E-05 |
| Class II ADP | (1/40) Avg | 10 | 7.65E+05 | [ADP] 7.85E-06 |
| Class I ATP | (1/40) Avg | 0 | 5.48E+06 | [ATP] 5.50E-05 |
| Class I ATP | (1/40) Avg | 1 | 5.47E+06 | [ATP] 5.49E-05 |
| Class I ATP | (1/40) Avg | 2 | 5.84E+06 | [ATP] 5.86E-05 |
| Class I ATP | (1/40) Avg | 4 | 3.41E+06 | [ATP] 3.43E-05 |
| Class I ATP | (1/40) Avg | 6 | 6.57E+06 | [ATP] 6.59E-05 |
| Class I ATP | (1/40) Avg | 10 | 6.66E+06 | [ATP] 6.68E-05 |
| Class I & II ATP | (1/40) Avg | 0 | 1.27E+03 | [ATP] 2.13E-07 |
| Class I & II ATP | (1/40) Avg | 1 | 1.23E+03 | [ATP] 2.12E-07 |
| Class I & II ATP | (1/40) Avg | 2 | 1.11E+03 | [ATP] 2.11E-07 |
| Class I & II ATP | (1/40) Avg | 4 | 1.73E+03 | [ATP] 2.17E-07 |
| Class I & II ATP | (1/40) Avg | 6 | 1.38E+03 | [ATP] 2.14E-07 |
| Class I & II ATP | (1/40) Avg | 10 | 1.31E+03 | [ATP] 2.13E-07 |
| Class III ATP | (1/40) Avg | 1 | 3.38E+03 | [ATP] 4.40E-07 |
| Class III ATP | (1/40) Avg | 2 | 3.46E+03 | [ATP] 4.52E-07 |
| Class III ATP | (1/40) Avg | 4 | 4.69E+03 | [ATP] 4.78E-07 |
| Class III ATP | (1/40) Avg | 6 | 7.30E+03 | [ATP] 5.29E-07 |
| Class III ATP | (1/40) Avg | 10 | 1.24E+04 | [ATP] 6.36E-07 |

:::

Deviation:

The RLU reading of all the different PPK2 activity assays are out of
range of the standard ATP curve.

Conclusion:

The concentrations are not accurate and are solely based off the
trendline/equation presented by the ATP standard curve (Figure 3).

Next steps: Make a concentration more dilute than 1/40 as the ATP and
ADP assays revealed that the dilutions were not dilute enough as they
did not fall within the standard curve.

:::{figure} figures/media/image5.png
:label: fig-ppk2-activity-comparison
:width: 75%
Comparisons of the various PPK2 ATP an ADP production routes. Class I, Class I & II, Class III ATP. Same reaction conditions as describe in Figure 3 caption. All graphs contained 1:40 & 1:10 dilutions PPK2, whereas Class III only has a 1:10 dilution (done by Team 3)
:::

Deviations: Both the 1:40 and 1:10 dilutions were out of range (much
higher than) the ATP Standard curve. The class I & class II did not work
as predicted as the data points are scattered throughout the graph. The
class III data had a curve different than expected, and this data was
collected from another group

Conclusion:

The graph of the activity assay of Class II ADP was included to show
that it was active and working as expected showing the
upwards-plateauing growth of ADP.

Aj-PPK2 Class II enzyme showed more activity than FT-Class I because the
ADP assay was completed in a smaller period (1 week) of time compared to
the ATP Assay (2 weeks), so the enzyme was able to retain a significant
amount of activity compared to the ATP Assay. More specifically, for the
ATP assay, the assay was run a week before the luminescence was read,
whereas the ADP assay was run a day before the luminescence was read.

Overall, the results were inconclusive as to which energy regeneration
system worked the best. The reason being that all of the activity
readings were done on separate plates and over the period of a long time
causing variation in the experimental environment, causing
inconsistencies in relativities throughout the data.

Next steps:

- Incubate Class II with AMP, before combining Class II with Class I.
  Then, incubate with Class I.

- Testing different combinations of the various Class I and Class II

- Try to do all the experiments in a shorter amount of time so that
  results are more consistent with each other

- Reading the reagents on the same plate as I was not able to read Emily
  and Suna's data on the same plate (because I didn't realize I should
  have)

- Have a day to just label centrifuge tubes and prepare dilutions by
  putting the water into the tubes to maintain same reaction
  conditions at like the very beginning of the experiment, even before
  purification (very time consuming)

## Encapsulation

### PURExpress Encapsulation

<!-- REVIEW: source restarts figure numbering at "Figure 1" here; figure numbers will be wrong in rendered output — reviewer to reconcile -->
:::{figure} figures/media/image6.png
:label: fig-encap-purexpress
:width: 75%
Microscopy screenshot of PURExpress at 0 min (left). Green fluorescence activity of Purexpress encapsulated cells (right). Fluorescence was adjusted to cell area. Average mean green intensity and adjusted intensity values are 154.22 AU and 0.247 respectively.
:::

:::{figure} figures/media/image7.png
:label: fig-encap-class-i
:width: 75%
Microscopy screenshot of Class I system at 5 min (left). Green fluorescence activity of class I encapsulated cells (right). Fluorescence was adjusted to cell area. Average mean green intensity and adjusted intensity values are 65.453 AU and 0.051 respectively.
:::

:::{figure} figures/media/image8.png
:label: fig-encap-class-ii
:width: 75%
Microscopy screenshot of Class II system at 0 min (left). Green fluorescence activity of class II encapsulated cells (right). Fluorescence was adjusted to cell area. Average mean green intensity and adjusted intensity values are 214.899 AU and 0.139 respectively.
:::

:::{figure} figures/media/image9.png
:label: fig-encap-mix
:width: 75%
Microscopy screenshot of Class II system at 0 min (left). Green fluorescence activity of class II encapsulated cells (right). Fluorescence was adjusted to cell area. Average mean green intensity and adjusted intensity values are 214.291 AU and 0.237 respectively.
:::
<!-- REVIEW: source caption says "Class II system" but this figure shows the Mix condition — verify with authors -->

:::{figure} figures/media/image10.png
:label: fig-encap-all-conditions
:width: 75%
Green fluorescence activity of encapsulated cells. All four cellular conditions are plotted together.
:::

### Cytosol Encapsulation

\*Important note, time stamped microscopy was not performed as only
initial encapsulation images were obtained. Therefore, microscopic
kinetic profiles are not available.

:::{figure} figures/media/image11.png
:label: fig-cytosol-encap-cytosol
:width: 75%
Microscopy screenshot of Cytosol system at 0 min. The mean green intensity and adjusted intensity values are 114.267 AU and 0.397 AU∕µm{sup}`2` respectively.
:::

:::{figure} figures/media/image12.png
:label: fig-cytosol-encap-class-i
:width: 75%
Microscopy screenshot of Class I system at 0 min. The mean green intensity and adjusted intensity values are 227.036 AU and 1.009 AU∕µm{sup}`2` respectively.
:::

:::{figure} figures/media/image13.png
:label: fig-cytosol-encap-class-ii
:width: 75%
Microscopy screenshot of Class II  system at 0 min. The mean green intensity and adjusted intensity values are 249.732 AU and 0.650 AU∕µm{sup}`2` respectively.
:::

:::{figure} figures/media/image14.png
:label: fig-cytosol-encap-mix
:width: 75%
Microscopy screenshot of system mixture at 0 min. The mean green intensity and adjusted intensity values are 179.325 AU and 0.448 AU∕µm{sup}`2` respectively.
:::

:::{figure} figures/media/image15.png
:label: fig-cytosol-fluorescence-kinetics
:width: 75%
Protein activity of isolated cytosol cell conditions measured via fluorescence over 5 hour time period. Data represents average of duplicate trials.
:::

## Summary of Results

:::{figure} figures/media/image16.png
:label: fig-summary-purexpress-table
:width: 75%
REVIEW: Summary of PURExpress results presented as a screenshot — convert to a native MyST table before publishing.
:::

:::{figure} figures/media/image17.png
:label: fig-summary-cytosol-table
:width: 75%
REVIEW: Summary of Cytosol results presented as a screenshot — convert to a native MyST table before publishing.
:::

## could be done differently, etc.
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

- Mention time sensitivity
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

\# Files to include
<!-- REVIEW: unfilled template placeholder — authors did not complete this section -->

## Encapsulation Limitations

There were not any significant problems that occurred regarding the
encapsulation procedure. Most limitations were presented during data
analysis. In terms of the enzyme efficacy, as mentioned earlier and
based on assay results, time was a limiting factor, where it seemed that
both enzyme classes eventually expire after purification leading to poor
results. Therefore, it is critical that encapsulation occurs without
delay.

## Quantification Limitations

Upon analyzing the data, there were inherent errors within the Image J
(fiji) software, that is not only exclusive to the user. Some images had
issues with microscope focus, which influenced the accurate selection
and green intensity measurement of liposomes. Sample size was also a
problem, where only one cell was selected and measured, which
established generalized conclusions for all other cells. Cell movement
must also be considered under the microscope, again limiting accurate
measurement. Therefore, conclusions had to consider multiple factors and
sets of data.

# Conclusions

Ultimately, the PURExpress system yielded better results than the
cytosol system. Within each respective system, for the PURExpress, the
mixture was the most promising, with highest protein translation rates
given by the raw mean green and adjusted mean green intensities. The
isolated kinetic quantification also confirmed these results with a
similar trend. In terms of the cytosol-based system, Class I proved to
be most effective, following similar reasoning, but there also is
limited data, since microscopic quantification occurred independent of
time-dependent fluorescence. Regardless, it appears the mixture was the
most effective, supporting initial hypotheses that such a combination
could substitute Class III and sufficiently providing exhaustive sources
of NMP, NDP, and NTP. Consequently, these cells have extensive supply
chains of energy allowing for long lasting protein synthesis and
cellular function. Notably, however, inconclusive assay results suggest
caution may be necessary before carrying this trend further.

# Resources

- Spin Column Procedure adapted from: iba by Cube Biotech Spin Column Kit Protocol — Version: PR137-0004. Revision date: 10.11.2025

---

REVIEW: 060326-Syn-cells-batch-cytosols - Processed (1).xlsx — confirm Nucleus naming convention before publishing.

REVIEW: ClassI_Bradford_Assay_Data.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: classII_bradford_assay.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: Exp 12 Microscopy - CHEM 471 - Team 1.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: Plate_map_Layout_Team 1.xlsx — confirm Nucleus naming convention before publishing.

REVIEW: Cytosol Microscopy Images/F/F206.03, F406.03, F506.03 — proprietary microscopy format; confirm how to include before publishing.

REVIEW: PUREexpress Microscopy Images/ (PNG timecourse images) — large image set; confirm inclusion strategy before publishing.
