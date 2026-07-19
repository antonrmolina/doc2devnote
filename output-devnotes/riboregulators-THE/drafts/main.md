---
title: 'Tunable Protein Expression with Toehold Exchange Riboregulators'
abstract: |
  Toehold exchange (THE) riboregulators are RNA-based regulators that couple toehold-mediated strand exchange to protein translation, enabling programmable control of expression strength without modifying the protein-coding sequence. Here we demonstrate three mechanisms for tuning expression with THE riboregulators — transcriptional, post-transcriptional, and translational control — and present detailed protocols for translational control experiments in which the length of an unstructured standby-site domain on the input strand is varied. Kinetic plate reader experiments were performed in both PURExpress and Nucleus Cytosol, with fluorescent protein output measured across four input strand variants. These results establish THE riboregulators as a composable RNA-to-protein module for the Nucleus synthetic cell platform.
---

# Overview

Toehold exchange (THE) riboregulators are a class of RNA molecules that use toehold-mediated strand exchange (TMSE) to regulate protein translation [[Zhang & Winfree 2009](https://pubs.acs.org/doi/10.1021/ja906987s)]. In TMSE reactions, an input RNA strand binds to an RNA duplex (gate) via a short toehold domain and, through sequence complementarity, initiates a process of branch migration that can displace an output RNA strand from the double-stranded gate duplex. In the case of a THE riboregulator, release of the output RNA exposes a ribosome binding sequence (*rbs*) that connects RNA strand exchange to protein expression. THE riboregulators are a subset of a broader class of circuits termed ctRSD circuits [[Green *et al.* 2022](https://www.science.org/doi/full/10.1126/sciadv.abl4354)], which use self-cleaving ribozymes to cotranscriptionally produce the double-strand RNA gates needed for TMSE reactions. ctRSD circuits can be programmed to execute logic, signal amplification, and signaling cascades.

The mechanism of TMSE offers many design parameters for precisely tuning the strength of protein expression. Three distinct mechanisms are illustrated in {ref}`fig-mechanism`:

1. **Transcriptional control** — modulating the concentration of DNA template reactants
2. **Post-transcriptional control** — modulating the rate and extent of the toehold exchange reaction by varying the *s'* or *e* domain lengths on the input strand
3. **Translational control** — modulating the translation rate of the output RNA by varying the length of an unstructured standby-site domain (*d* domain) at the 5′ end of the input strand

The *d* domain serves as a standby site for the ribosome to bind and facilitate translation initiation after strand exchange [[Stringer *et al.* 2014](https://academic.oup.com/nar/article/42/4/2646/2435298)]; increasing *d* domain length increases translation strength. Lengths beyond 20 bases are not predicted to provide additional benefit. Because the toehold exchange mechanism is reversible, increasing the degree of complementarity between the input toehold and gate (*s'* domain) increases the forward reaction rate (ON state production), while increasing the *e* domain complementarity decreases it.

:::{figure} ./figures/the-mechanism.png
:label: fig-mechanism
:align: center
:width: 90%

Kinetic data of THE riboregulator operation in PURExpress with plasmid DNA templates. Yellow-highlighted domains on the input RNA indicate domains that can be modified to control expression strength. The *Rz* domain on the gate indicates the self-cleaving ribozyme required for cotranscriptional double-strand RNA gate production. For transcriptional control results, INPUT and GATE template concentrations are listed in the plot; in the remaining results both templates were at 5 nmol/L. Legends indicate the length (in bases) of *s'*, *e*, or *d* domains on the input RNA. Other than the translational control results, the *d* domain was 20 bases. Data from [[Schaffter *et al.* 2025](https://www.biorxiv.org/content/10.1101/2025.09.25.678518v2.full)].
:::

This DevNote presents the sequences and protocols for **translational control experiments** — varying the length of the *d* domain on the input strand across four lengths (1, 5, 10, and 20 bases) — run in both PURExpress and Nucleus Cytosol.

# Design

For a detailed description of THE riboregulator design see Supplementary Section 2 of [[Schaffter *et al.* 2025 (bacteria)](https://www.biorxiv.org/content/10.1101/2025.09.24.678369v1.full)] and Supplementary Section S2 of [[Green *et al.* 2022](https://www.science.org/doi/full/10.1126/sciadv.abl4354)] for the broader ctRSD gate class. Key design considerations are summarized below:

1. THE riboregulators are designed with an 18-base linker sequence (*n* domain) upstream of the protein coding sequence (CDS) that adds 6 amino acids to the N-terminus of the protein.
2. A start codon at the beginning of the *n* linker domain initiates translation; the native start codon in the protein coding sequence is changed to a leucine codon (TTA) to minimize spurious initiation from gates in the OFF state.
3. Post-transcriptional control mechanisms that produce the expected trends in PURE may not replicate in cells or cell lysate (see [[Schaffter *et al.* 2025](https://www.biorxiv.org/content/10.1101/2025.09.25.678518v2.full)] and [[Schaffter *et al.* 2025 (bacteria)](https://www.biorxiv.org/content/10.1101/2025.09.24.678369v1.full)]).

Annotated plasmid maps are available on Benchling: [toehold-exchange-riboregulator-published-sequences](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/).

To design alternative sequences, use the ctRSD and THE riboregulator sequence compiler:

- Documentation: [ctrsd-simulator.readthedocs.io](https://ctrsd-simulator.readthedocs.io/en/latest/SeqCompiler.html)
- CoLab notebook: [sequence compiler CoLab](https://colab.research.google.com/drive/1Bd-ZugIWnc7PMiFkpaia_UnWA24KF3Mv?usp=sharing)

# Materials and Equipment

## Key Materials

:::{table} Non-nucleic acid materials.
:label: tbl-materials
:align: center
| **Name** | **Product** | **Manufacturer** | **Part #** | **Storage** |
| --- | --- | --- | --- | --- |
| PURExpress | PURExpress *in vitro* protein synthesis kit | New England Biolabs | E6800S | −80 °C |
| HBC620 Pepper dye | HBC620 | MedChemExpress | HY-133520 | −20 °C |
| DMSO | Dimethyl sulfoxide | Fisher BioReagents | BP231-100 | Room temp (flammable) |
| 5× txn buffer | T7 RNA polymerase buffer | ThermoFisher Scientific | EP0111 | −20 °C |
| 384-well plates | Microplate, 384-well, PS, F-bottom | Greiner Bio-one | 784101 | Room temp |
| Nuclease-free water | Nuclease-free water (not DEPC treated) | ThermoFisher Scientific | AM9939 | Room temp |
| 200 µL PCR tubes | TempAssure PCR Flex-Free 8-Tube Strips, Attached Optical Caps | USA Scientific | 1402-4700 | Room temp |
| 2× PCR Master Mix | Phusion Flash High-Fidelity PCR Master Mix | ThermoFisher Scientific | F548S | −20 °C |
| PCR cleanup kit | PureLink PCR Purification Kit | ThermoFisher Scientific | K310001 | Room temp |

Most 384-well plates should work, but check the manufacturer's minimum recommended volume and scale reactions up accordingly if the minimum volume is > 10 µL.
:::

## DNA Components

:::{table} Nucleic acid primers and molecular beacon oligonucleotides. Ordered from Integrated DNA Technologies (IDT). Base modifications follow IDT nomenclature; 'm' preceding a base indicates a 2′-*O*-methyl modification. The quencher-modified strand of the reporter should be ordered with HPLC purification; all other strands can be ordered with standard desalting.
:label: tbl-oligos
:align: center
| **Name** | **Sequence** | **Purpose** |
| --- | --- | --- |
| T7fwd | TTCTAATACGACTCACTATAGGGAG | Fwd primer for T7 promoter |
| T7rev | CAAAAAACCCCTCAAGACCCGTTTAG | Rev primer for T7t terminator |
| Thyb10rev | AAAAAAAAACAGATAGCCGCGCGAAC | Rev primer for Thyb10 terminator |
| R{x2}-F-2omR | /5HEX/mCmUmAmCmAmUmCmCmAmCmAmUmAmCmUmA | 2′OMe-RNA fluorophore strand of molecular beacon |
| R{rbs2}-Q-2omR | mAmGmGmAmGmGmUmAmGmUmAmUmGmUmGmGmAmUmGmUmAmG/3IAbRQSp/ | 2′OMe-RNA quencher strand of molecular beacon (rbs toehold) |
| MB rbs trigger 2omR | mCmUmAmCmAmUmCmCmAmCmAmUmAmCmUmAmCmCmUmCmCmU | 2′OMe-RNA trigger for spiking molecular beacon signal |
:::

:::{table} DNA templates for ctRSD inputs. Sequences can be ordered as linear gene fragments (eBlocks or gBlocks from IDT). Full sequences are for eBlock orders (>300 bases). Underlined portions represent the transcription unit (promoter to terminator) for gBlock orders (>125 bases).
:label: tbl-inputs
:align: center
| **Translation strength** | **Short name** | **Full name** |
| --- | --- | --- |
| Min (OFF) | Io | Io |
| Max | IN_1 | I{u1d} [d~20~ Thyb10] |
| Low | IN_2 | I{u1} [Thyb10] |
| Medium | IN_3 | I{u1d} [d~5~ Thyb10] |
| High | IN_4 | I{u1d} [d~10~ Thyb10] |

Full sequences are available on Benchling: [toehold-exchange-riboregulator-published-sequences](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/).
:::

:::{table} DNA templates for the full THE riboregulator transcription (TX) unit. Full sequences are available on Benchling.
:label: tbl-gates
:align: center
| **Component** | **Short name** | **Full name** | **Reporter** |
| --- | --- | --- | --- |
| Full TX unit | G_1 (T7t) | G{u1,rbs2} [s~4~u] | sCFP3A |
| Full TX unit | G_1 (T7t) | G{u1,rbs2} [s~4~u] | sfGFP |
:::

# Protocol

## Preparation of HBC620 Pepper Dye Stock Solution

*The HBC620 dye is not required to assess THE riboregulator performance but provides a measurement of transcription rate. It should only be included when the RNA component encodes the Pepper RNA aptamer; otherwise no signal will be produced.*

1. Centrifuge the tube containing lyophilized HBC620 dye to collect all material at the bottom.
2. In a chemical fume hood, prepare a 10 mM stock solution by adding 100% DMSO to the HBC620 dye tube (273.6 µL DMSO per 1 mg of HBC620 dye).
3. Vortex thoroughly until dye is dissolved.
4. Wrap tube in aluminum foil to prevent photobleaching.
5. Store at −20 °C when not in use.

## Preparation of the Molecular Beacon (Optional)

*The molecular beacon is not required to assess THE riboregulator performance but provides a complementary measurement to fluorescent protein expression for strand exchange. It is particularly useful in experiments where translation is absent or inhibited (e.g., PURE lacking ribosomes or elongation factors), as it enables measurement of strand exchange without fluorescent protein production.*

1. Centrifuge tubes containing lyophilized DNA to collect all material at the bottom.
2. Using nuclease-free water, resuspend lyophilized DNA to 100 µM (10 µL water per 1 nmol DNA).
3. Vortex thoroughly until DNA is dissolved.
4. Prepare 20 µM molecular beacon solution for thermal annealing in a 200 µL PCR tube ({ref}`tbl-mb-anneal`).

:::{table} Molecular beacon annealing solution.
:label: tbl-mb-anneal
:align: center
| **Component** | **Volume (µL)** |
| --- | --- |
| Nuclease-free water | 40 |
| 5× txn buffer | 20 |
| 100 µM R{x2}-F-2omR | 20 |
| 100 µM R{rbs2}-Q-2omR | 20 |
:::

5. In a thermocycler, run the following thermal annealing protocol ({ref}`tbl-mb-thermo`).

:::{table} Molecular beacon thermal annealing protocol.
:label: tbl-mb-thermo
:align: center
| **Step** | **Temperature** | **Time** | **Iterations** |
| --- | --- | --- | --- |
| Initial denaturation | 90 °C | 5 min | 1 |
| 90 °C to 80 °C ramp | −1 °C/min | 1 min | 9 |
| 80 °C to 70 °C ramp | −1 °C/min | 1 min | 9 |
| 70 °C to 60 °C ramp | −1 °C/min | 1 min | 9 |
| 60 °C to 50 °C ramp | −1 °C/min | 1 min | 9 |
| 50 °C to 40 °C ramp | −1 °C/min | 1 min | 9 |
| 40 °C to 30 °C ramp | −1 °C/min | 1 min | 9 |
| 30 °C to 20 °C ramp | −1 °C/min | 1 min | 9 |
| Hold | 4 °C | Hold | 1 |
:::

6. Store annealed molecular beacon at −20 °C when not in use.

## Preparation of Linear DNA Templates

*Linear PCR product templates are recommended over plasmid templates as they are simpler to work with, less prone to preparation-to-preparation variability, and produce higher fluorescent signals in PURE. Gene fragments containing full transcription units (promoter to terminator) can be ordered and PCR-amplified as shown in {ref}`tbl-pcr-full`. Alternatively, for THE riboregulator gates, a single gene fragment spanning the N-terminal linker to the terminator can be ordered, with the 5′ UTR appended by overlap PCR ({ref}`tbl-pcr-overlap`). This reduces cost and increases flexibility.*

1. Prepare DNA templates:
   a. If ordering as gBlock gene fragments, resuspend DNA to 10 ng/µL in nuclease-free water.
   b. If ordering as eBlock gene fragments, the DNA arrives at 10 ng/µL in IDTE buffer and can be used directly.
2. Prepare DNA primers:
   a. Centrifuge tubes containing lyophilized DNA to collect all material at the bottom.
   b. Resuspend lyophilized DNA to 100 µM in nuclease-free water (10 µL water per 1 nmol DNA).
   c. Vortex thoroughly until DNA is dissolved.
3. Prepare the PCR solution ({ref}`tbl-pcr-full` or {ref}`tbl-pcr-overlap`).

:::{table} PCR solution for DNA templates containing full transcription units (promoter to terminator). See sequences in {ref}`tbl-inputs` and {ref}`tbl-gates`.
:label: tbl-pcr-full
:align: center
| **Component** | **Volume (µL)** |
| --- | --- |
| Nuclease-free water | 36.6 |
| 2× PCR master mix | 37.5 |
| 100 µM T7fwd primer | 0.375 |
| 100 µM Thyb10rev primer | 0.375 |
| 10 ng/µL DNA template | 0.15 |
:::

:::{table} PCR solution for overlap PCR to append 5′ UTR sequence to downstream protein coding sequence. See sequences in the Benchling repository.
:label: tbl-pcr-overlap
:align: center
| **Component** | **Volume (µL)** |
| --- | --- |
| Nuclease-free water | 36.6 |
| 2× PCR master mix | 37.5 |
| 100 µM T7fwd primer | 0.375 |
| 100 µM T7rev primer | 0.375 |
| 10 ng/µL 5′ UTR template | 0.15 |
| 10 ng/µL CDS template | 0.45 |
:::

4. Run the PCR protocol in a thermocycler ({ref}`tbl-pcr-thermo`). The same protocol is used for single-template and overlap extension PCR.

:::{table} PCR thermocycler protocol.
:label: tbl-pcr-thermo
:align: center
| **Step** | **Temperature** | **Time** | **Iterations** |
| --- | --- | --- | --- |
| Initial denaturation | 98 °C | 5 min | 1 |
| Denaturation | 98 °C | 30 s | 30 |
| Annealing | 60 °C | 30 s | 30 |
| Extension | 72 °C | 30 s | 30 |
| Final extension | 72 °C | 3 min | 1 |
| Hold | 4 °C | Hold | 1 |
:::

5. Purify PCR products using the PureLink PCR cleanup kit:
   a. Add 300 µL of B2 buffer to a PureLink column.
   b. Add all 75 µL of PCR reaction and pipette-mix with B2 buffer ~10 times.
   c. Centrifuge at 13,000 rpm for 1 min; discard flow-through.
   d. For overlap PCR products, add a 300 µL wash with B3 buffer (repeat step c) to remove short secondary products. **Do not perform this wash for short templates encoding input RNAs**, as significant DNA loss will occur.
   e. Add 650 µL Wash buffer and repeat step c.
   f. Repeat step c once more to remove residual Wash buffer.
   g. Add 35 µL of PureLink Elution buffer; allow the column to sit at room temperature for ~2 min.
   h. Transfer column to a fresh collection tube and centrifuge at 13,000 rpm for 1 min.
   i. Retain the collection tube with eluted DNA.
6. Measure the concentration of purified PCR products using A260 absorbance (Nanodrop) or fluorogenic measurements (Qubit). Qubit measurements were used in the published work; A260 and Qubit results are typically similar for PCR products.
7. Store purified PCR products at −20 °C when not in use.

## Preparation of Plasmid Templates

Methods for plasmid extraction can be found in [[Ref 1](https://pubs.acs.org/doi/10.1021/ja906987s)]. Additional details on best practices for DNA plasmid preparation for cell-free expression systems are described in [[Garenne *et al.* 2021](https://academic.oup.com/synbio/article/7/1/ysac015/6664141)]. Three critical points for obtaining results comparable to linear templates:

1. After plasmid extraction, perform a secondary PCR cleanup (PureLink kit specified in {ref}`tbl-materials`).
2. Use high-copy-number plasmids. Low-copy-number plasmids (~10 copies) deviate from linear template results even at nominally identical concentrations.
3. Use Qubit for plasmid concentration measurements. Nanodrop measurements significantly overestimate plasmid concentrations relative to Qubit; this discrepancy is smaller for linear templates.

## Kinetic Plate Reader Experiments

*This protocol demonstrates translational control of protein expression using THE riboregulators. Translation strength is controlled by varying the length of the* d *domain on the input strand across four lengths: 1-base (IN_2, low expression), 5-base (IN_3, medium expression), 10-base (IN_4, high expression), and 20-base (IN_1, maximum expression). A decoy input (Io), which is not complementary to the riboregulator, is included as the OFF state control and equalizes total DNA template concentration across all samples, enabling direct comparison of translational differences. The protocol below tests 5 samples with 3 technical replicates each, using DNA template stock concentrations of 100 nM.*

1. Thaw cell-free expression reagents from −80 °C on ice:
   a. PURExpress Solution A and Solution B, or
   b. Nucleus Cytosol SMix, PMix, tRNA, and ribosomes.
2. Thaw DNA templates (purified PCR products or plasmids), annealed molecular beacon, and HBC620 dye stock solution from −20 °C at room temperature.
3. Set up the plate reader protocol:
   a. Set incubation temperature to 37 °C.
   b. Set fluorescence measurement interval to every 5 min, reading from the bottom of the plate.
   c. Set excitation and emission wavelengths as specified in {ref}`tbl-reader-settings`.

:::{table} Plate reader excitation and emission settings.
:label: tbl-reader-settings
:align: center
| **Component** | **Ex (nm)** | **Em (nm)** | **Bandwidth (nm)** | **Gain** |
| --- | --- | --- | --- | --- |
| sCFP3A | 430 | 475 | 10 | 85 |
| Molecular beacon (MB) | 524 | 565 | 20 | 80 |
| Pepper–HBC620 complex | 577 | 620 | 20 | 75 |
| sfGFP | 485 | 510 | 10 | 75 |
:::

4. Add DNA templates to 0.5 mL DNA LoBind tubes as specified in {ref}`tbl-dna-layout`. Volumes assume 3 technical replicates with 10% excess.

:::{table} Volumes of DNA templates (from 100 nM stock) and Master Mix per sample. Volumes assume 3 technical replicates with 10% excess.
:label: tbl-dna-layout
:align: center
| **DNA template 1** | **Volume (µL) per 33 µL** | **DNA template 2** | **Volume (µL) per 33 µL** | **Master Mix volume (µL)** |
| --- | --- | --- | --- | --- |
| Io | 1.65 | G_1 | 1.65 | 29.70 |
| IN_2 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_3 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_4 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_1 | 1.65 | G_1 | 1.65 | 29.70 |
:::

5. Prepare the Master Mix in a 1.7 mL or 2 mL microfuge tube ({ref}`tbl-mastermix-purex` for PURExpress or {ref}`tbl-mastermix-cytosol` for Nucleus Cytosol).
6. Pipette-mix the Master Mix with a pipette volume set to 50 µL.

::::::{tab-set}

:::::{tab-item} PURExpress Master Mix
:::{table} Components and volumes for reactions in PURExpress. The Volume column specifies the amount for one sample (3× technical replicates, 20% excess). The Master Mix column specifies the total for all 5 samples. *Solution A must be added before Solution B.*
:label: tbl-mastermix-purex
:align: center
| **Component** | **[Stock] (nmol/L)** | **[Final] (nmol/L)** | **Volume (µL) per 36 µL** | **Master Mix (5 samples)** |
| --- | --- | --- | --- | --- |
| Solution A | — | — | 14.40 | 72.00 |
| Solution B | — | — | 10.80 | 54.00 |
| Molecular beacon (MB) | 20,000 | 500 | 0.90 | 4.50 |
| HBC620 dye | 1,000,000 | 5,000 | 0.18 | 0.90 |
| H₂O | — | — | 6.12 | 30.60 |
| DNA templates | 100 | 5 | Individually | Individually |
:::
:::::

:::::{tab-item} Nucleus Cytosol Master Mix
:::{table} Components and volumes for reactions in Nucleus Cytosol. The Volume column specifies the amount for one sample (3× technical replicates, 20% excess). The Master Mix column specifies the total for all 5 samples.
:label: tbl-mastermix-cytosol
:align: center
| **Component** | **[Stock] (nmol/L)** | **[Final] (nmol/L)** | **Volume (µL) per 36 µL** | **Master Mix (5 samples)** |
| --- | --- | --- | --- | --- |
| SMix | 10,000 | 3,000 | 10.80 | 54.00 |
| tRNA | 10,000 | 1,000 | 3.60 | 18.00 |
| PMix | 10,000 | 1,200 | 4.32 | 21.60 |
| Ribosomes | 10,000 | 2,400 | 8.64 | 43.20 |
| Molecular beacon (MB) | 20,000 | 500 | 0.90 | 4.50 |
| HBC620 dye | 1,000,000 | 5,000 | 0.18 | 0.90 |
| H₂O | — | — | 0.96 | 4.80 |
| DNA templates | 100 | 5 | Individually | Individually |
:::
:::::

::::::

7. Add the Master Mix volume specified in {ref}`tbl-dna-layout` to each DNA LoBind tube.
8. Pipette-mix each sample upon addition of the Master Mix.
9. Transfer 10 µL at a time from each DNA LoBind tube to wells in a 384-well plate (3 wells per sample = 3 technical replicates).
10. Check for bubbles and apply a clear plastic cover sheet to the plate.
11. Place the plate in the plate reader and start the protocol.
12. Run the reaction for at least 4 hours.
13. Pause or stop the experiment and remove the plate.
14. Add 3 µL of 10 µmol/L MB trigger RNA to each reaction well and pipette-mix. *(This step is only required when using the molecular beacon. Addition of excess MB trigger RNA causes all MB molecules in each well to react and release the fluorescent strand, providing an internal maximum-fluorescence value for MB normalization.)*
15. Cover the plate and return it to the plate reader.
16. Continue measurements for at least one additional hour, or leave overnight.
17. Stop the experiment and export data for analysis.

# Results

## PURExpress (2025-03-11)

THE riboregulator translational control experiments were run in PURExpress on 2025-03-11. Five conditions were tested in triplicate: the decoy OFF-state input (Io) and four input strands with *d* domain lengths of 1 (IN_2), 5 (IN_3), 10 (IN_4), and 20 (IN_1) bases. All conditions were run with the sCFP3A gate (G_1) at 5 nmol/L each template. Fluorescence was measured every 5 minutes over 24 hours. The Pepper–HBC620 channel provides a measure of transcription rate, the molecular beacon channel measures output RNA release (strand exchange), and the CFP channel measures translation from the gate in the ON state.

:::{figure} ./experiments/20250311-PURExpress-THE/PURExpress_Results.png
:label: fig-purexpress
:align: center
:width: 85%

Experimental results in PURExpress. Kinetic results of a THE riboregulator cotranscribed with input RNAs possessing *d* domains of increasing length. Lines and shading represent the mean and standard deviation from 3 technical replicates. The Pepper–HBC620 channel provides a measure of initial transcription rate of the gate; the molecular beacon provides a measure of output RNA release; CFP measures translation rate from the gate in the ON state.
:::

Expression of sCFP3A increased monotonically with *d* domain length, consistent with the standby-site mechanism of translational control. The Pepper and molecular beacon channels showed comparable kinetics across all conditions, confirming that differences in CFP output reflect translational rather than transcriptional variation.

## Nucleus Cytosol (2026-05-12)

The same translational control experiment was run in Nucleus Cytosol on 2026-05-12. A single replicate was run for each of the five conditions. Instrument settings were identical to the PURExpress experiment ({ref}`tbl-reader-settings`), with 289 reads at 5-minute intervals over 24 hours on a Synergy Neo2 plate reader.

:::{figure} ./experiments/20260512-Cytosol-THE/Nucleus_Cytosol_Results.png
:label: fig-cytosol
:align: center
:width: 85%

Experimental results in Nucleus Cytosol. Kinetic results of a THE riboregulator cotranscribed with input RNAs possessing *d* domains of increasing length. A single replicate was run for each sample. The Pepper–HBC620 channel provides a measure of initial transcription rate of the gate; the molecular beacon provides a measure of output RNA release; CFP measures translation rate from the gate in the ON state.
:::

THE riboregulator translational control was functional in Nucleus Cytosol, with CFP expression increasing with *d* domain length in a pattern qualitatively consistent with the PURExpress results ({ref}`fig-purexpress`). These results are preliminary; only single replicates were collected and quantitative comparison to PURExpress requires additional experiments with matched replicates.

# Conclusions

THE riboregulators provide programmable translational control of protein expression in both PURExpress and Nucleus Cytosol. Varying the *d* domain length on the input strand from 1 to 20 bases produced a graded increase in CFP expression in both systems, consistent with the standby-site mechanism of translation initiation. These results establish THE riboregulators as a composable RNA-to-protein module for the Nucleus synthetic cell platform. Next steps include running full replicate experiments in Nucleus Cytosol, testing post-transcriptional and transcriptional control variants, and characterizing THE riboregulator performance across different Nucleus Cytosol lot preparations.

# References

1. **DNA toehold-mediated strand exchange reactions:** Zhang, D.Y. & Winfree, E. (2009). *J. Am. Chem. Soc.* [[doi:10.1021/ja906987s](https://pubs.acs.org/doi/10.1021/ja906987s)]
2. **THE riboregulators in cell-free expression systems:** Schaffter *et al.* (2025). bioRxiv. [[doi:10.1101/2025.09.25.678518](https://www.biorxiv.org/content/10.1101/2025.09.25.678518v2.full)]
3. **THE riboregulators in bacteria:** Schaffter *et al.* (2025). bioRxiv. [[doi:10.1101/2025.09.24.678369](https://www.biorxiv.org/content/10.1101/2025.09.24.678369v1.full)]
4. **Original description of ctRSD circuits:** Green *et al.* (2022). *Science Advances.* [[doi:10.1126/sciadv.abl4354](https://www.science.org/doi/full/10.1126/sciadv.abl4354)]
5. **The ctRSD toolkit:** [[doi:10.1021/acssynbio.3c00079](https://pubs.acs.org/doi/abs/10.1021/acssynbio.3c00079)]
6. **An alternative design for producing dsRNA gates:** [[doi:10.1021/acs.nanolett.0c03629](https://pubs.acs.org/doi/abs/10.1021/acs.nanolett.0c03629)]
7. **Ribosome standby site and translation strength:** Stringer *et al.* (2014). *Nucleic Acids Research.* [[doi:10.1093/nar/gkt1168](https://academic.oup.com/nar/article/42/4/2646/2435298)]
8. **Best practices for plasmid template extraction:** Garenne *et al.* (2021). *Synthetic Biology.* [[doi:10.1093/synbio/ysac015](https://academic.oup.com/synbio/article/7/1/ysac015/6664141)]
