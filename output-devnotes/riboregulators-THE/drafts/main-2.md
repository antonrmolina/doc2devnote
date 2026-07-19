---
title: "Tunable protein expression strength with toehold exchange riboregulators"
# REVIEW: no abstract in source — description below is synthesized; verify before publishing
description: |
  REVIEW: synthesized — verify before publishing. Toehold exchange (THE) riboregulators couple RNA strand displacement to protein translation, enabling tunable protein expression strength via transcriptional, post-transcriptional, and translational control; this DevNote presents sequences and protocols for translational control experiments in PURExpress and Nucleus Cytosol.
authors:
  # REVIEW: from Credits section of source — confirm emails and ORCIDs
  - name: Samuel Schaffter
    affiliation: NIST Cellular Engineering Group
  - name: Fernanda Piorino
    affiliation: NIST Cellular Engineering Group
  - name: Eugenia Romantseva
    affiliation: NIST Cellular Engineering Group
date: # REVIEW: not found in source
license: CC-BY-4.0
---

# Overview

Toehold exchange (THE) riboregulators are a class of RNA molecules that
us toehold-mediated strand exchange (TMSE -- [](https://doi.org/10.1021/ja906987s)) to regulate protein
translation ([](https://doi.org/10.1101/2025.09.25.678518), [](https://doi.org/10.1101/2025.09.24.678369)). In TMSE reactions an input RNA strand binds to
an RNA duplex (gate) via a short toehold domain and, through sequence
complementarity, initiates a process of branch migration that ultimately
can displace an output RNA strand from the double stranded gate duplex.
In the case of a THE riboregulator, the release of the output RNA
results in exposure of a ribosome binding sequence (*rbs*) that connects
RNA strand exchange to protein expression. THE riboregulators are a
subset of a broader class of circuits, termed ctRSD circuits ([](https://doi.org/10.1126/sciadv.abl4354), [](https://doi.org/10.1021/acssynbio.3c00079), [](https://doi.org/10.1021/acs.nanolett.0c03629)), that use self-cleaving ribozymes to cotranscriptionally produce
the double-strand RNA gates needed for TMSE reactions. ctRSD circuits
can be programmed to execute logic, signal amplification, and signaling
cascades.

The mechanism of TMSE offers many design parameters for precisely tuning
the strength of protein expression. In Figure 1 we emphasize methods
that rely on design changes to the short input RNA rather than changes
to the gate that contains the long protein coding sequence. In addition
to transcriptional control of expression strength by changing DNA
template concentrations (Figure 1, left), protein expression strength
can be controlled at the translational level by varying the length of an
unstructured domain at the 5' end of the input strand (*d* domain). This
unstructured domain serves as a standby site for the ribosome to bind to
facilitate translation initiation after strand exchange ([](https://doi.org/10.1093/nar/gkt1168)<!-- REVIEW: highlighted in source -->), with increasing lengths increasing translation strength
(Figure 1, right). Lengths beyond 20 bases are not predicted to provide
additional benefit ([](https://doi.org/10.1093/nar/gkt1168)<!-- REVIEW: highlighted in source -->). Because the toehold exchange
mechanism is reversible ([](https://doi.org/10.1021/ja906987s)), protein expression can also be
controlled by modulating the strength of the forward or reverse strand
exchange reactions. Increasing the degree of complementarity between the
input toehold of the input and gate (*s'* domain) increases the rate of
production of gate in the ON state. Conversely, increasing the degree of
complementarity between the output toehold of the gate and input (*e*
domain) decreases the rate of production of gate in the ON state. Both
mechanisms thus tune protein expression strength at the
post-transcriptional level (Figure 1, middle).

Together these results illustrate three distinct mechanisms for tuning
protein expression with THE riboregulators:

1. Modulating the concentration of reactants (transcriptional control)

2. Modulating the rate and extent of reaction to produce products
   (post-transcriptional control)

3. Modulating the translation rate of the products (translational
   control)

Here we present the sequences and protocols for translational control
experiments (modulating the length of the *d* domain on the input
strand).

:::{figure} ./figures/the-mechanism.png
:label: fig1
:align: center
:width: 90%

**Figure 1**: Kinetic data of THE riboregulator operation in PURExpress
with plasmid DNA templates. The yellow highlighted domains on the input
RNA specify domains that can be modified to control protein expression
strength. The *Rz* domain on the gate indicates the self-cleaving
ribozyme necessary to cotranscriptionally produce the double strand RNA
duplex needed for TMSE. For transcriptional control results INPUT and
GATE template concentrations are listed in the plot. In the remain
results both templates were at 5 nmol/L. Legends indicate the length (in
bases) of *s'*, *e*, or *d* domains on the input RNA. Other than the
translational control results, the *d* domain was 20 bases. Data from
[](https://doi.org/10.1101/2025.09.25.678518). See Supplementary Section 1 in [](https://doi.org/10.1101/2025.09.25.678518) for a detailed description
of component and domain nomenclature.
:::

# Design

For a detailed description of THE riboregulator design see Supplementary
Section 2 of [](https://doi.org/10.1101/2025.09.24.678369). Supplementary Section S2 of [](https://doi.org/10.1126/sciadv.abl4354) describes the
design choices for the broader class of ctRSD gates.

Below we summarize a few design considerations of particular note:

1. THE riboregulators are currently designed with an 18-base linker
   sequence (*n* domain) upstream of the protein coding sequence (CDS)
   that adds 6 amino acids N terminus of the protein.

2. There is a start codon at beginning of the *n* linker domain for
   translation initiation; the start codon in native protein sequence
   is changed to a leucine codon (TTA) to minimize the chance for
   spurious initiation from gates in the OFF state.

3. Not all design trends in PURE produce the same results in cells or
   in cell lysate, notably the post-transcriptional control mechanisms
   (see [](https://doi.org/10.1101/2025.09.25.678518) and [](https://doi.org/10.1101/2025.09.24.678369)).

To design alternative sequences, see Resources below for
sequence compiling software to create new combinations of domains.

Annotated plasmid maps can be found on Benchling: [Link](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/)

# Materials and Equipment

## Key materials

**Table 1:** Non-nucleic acid materials.

:::{table} Non-nucleic acid materials.
:label: tbl-1
:align: center
| **Name** | **Product** | **Manufacturer** | **Part #** | **Price** | **Link** | **Storage** |
| --- | --- | --- | --- | --- | --- | --- |
| PURExpress | NEB PURExpress in vitro protein synthesis kit | New England Biolabs | E6800S | $307.00 | [link](https://www.neb.com/en-us/products/protein-expression/cell-free-protein-expression/purexpress) | -80 °C |
| HBC620 Pepper dye<!-- REVIEW: highlighted in source --> | HBC620 | MedChemExpress | HY-133520 | — | — | — |
| DMSO | Dimethyl Sulfoxide | Fisher BioReagents | BP231-100 | $84.70 | [link](https://www.fishersci.com/shop/products/dimethyl-sulfoxide-fisher-bioreagents/BP231100) | Room temp (flammable) |
| 5x txn buffer | T7 RNA polymerase | ThermoFisher Scientific | EP0111 | $109.00 | [link](https://www.thermofisher.com/order/catalog/product/EP0111) | -20 °C |
| 384-well plates* | Microplate, 384 well, PS, F-bottom | Greiner Bio-one | 784101 | $408.20 | [link](https://shop.gbo.com/en/usa/products/bioscience/microplates/384-well-microplates/384-well-small-volume-hibase-microplates/784101.html) | Room temp |
| Nuclease free water | Nuclease free water (not DEPC treated) | ThermoFisher Scientific | AM9939 | $162.00 | [link](https://www.thermofisher.com/order/catalog/product/AM9939) | Room temp |
| 200 µL PCR tubes | TempAssure PCR Flex-Free 8-Tube Strips, Attached Individual Optical Caps | USA Scientific | 1402-4700 | $96.75 | [link](https://www.usascientific.com/flex-free-pcr-8-strip-attached-clear-flat-caps/p/PCR-Tu-Flex-Att-Optic) | Room temp |
| 2x PCR Master Mix | Phusion Flash High-Fidelity PCR Master Mix | ThermoFisher Scientific | F548S | $110.65 | [link](https://www.thermofisher.com/order/catalog/product/F548S) | -20 °C |
| PureLink cleanup kit | PureLink PCR Purification Kit | ThermoFisher Scientific | K310001 | $148.00 | [link](https://www.thermofisher.com/order/catalog/product/K310001) | Room temp |

\* Most 384-well plates should work but check the minimum volume recommended by the manufacturer and scale the reactions up accordingly if the minimum volume is > 10 µL.
:::

## DNA components

**Table 2:** Nucleic acid primers and molecular beacon oligonucleotides, typically ordered from Integrated DNA Technologies (IDT). Base modifications follow IDT's nomenclature. An 'm' preceding a base indicates a 2'-O-methyl modification. The quencher modified strand of the reporter should be ordered with HPLC purification. All other strands can be ordered with standard desalting.

:::{table} Nucleic acid primers and molecular beacon oligonucleotides.
:label: tbl-2
:align: center
| **Name** | **Sequence** | **Purpose** |
| --- | --- | --- |
| T7fwd | TTCTAATACGACTCACTATAGGGAG | fwd primer for T7 promoter |
| T7rev | CAAAAAACCCCTCAAGACCCGTTTAG | rev primer for T7t terminator |
| Thyb10rev | AAAAAAAAACAGATAGCCGCGCGAAC | rev primer for Thyb10 terminator |
| R{x2}-F-2omR | /5HEX/mCmUmAmCmAmUmCmCmAmCmAmUmAmCmUmA | 2omRNA-based fluorophore strand of molecular beacon, can be used with any quencher strand below |
| R{rbs2}-Q-2omR | <u>mAmGmGmAmGmGm</u>UmAmGmUmAmUmGmUmGmGmAmUmGmUmAmG/3IAbRQSp/ | 2omRNA-based quencher strand of molecular beacon with rbs toehold |
| MB rbs trigger 2omR | mCmUmAmCmAmUmCmCmAmCmAmUmAmCmUmAmCmCmUmCmCmU | 2omRNA-based trigger strand for spiking molecular beacon signal, rbs toehold |
:::

**Table 3:** DNA templates for ctRSD inputs. These sequences can be ordered as linear gene fragments, typically eBlocks of gBlocks from IDT. Full sequences are for eBlock orders (>300 bases). Underlined portions of the sequences represent the transcription unit (**promoter** to *terminator*) for ordering as a gBlock (>125 bases). Annotated sequence maps can be found on Benchling: [Link](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/).

:::{table} DNA templates for ctRSD inputs.
:label: tbl-3
:align: center
| **Translation strength** | **Short name** | **Full name** | **Sequence** |
| --- | --- | --- | --- |
| Expression: Min (OFF) | Io | Io | gaagtctaacgctgctctgggctaactgtcCATTACTCGCATCCATTCTCAGGCTGTCTCGTCTCGTCTC<u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCAATCAATAACACACATA*ataatcAGATAACAGATACttcgGtatctgttatctgttTTTTTTcAACAGATAGCCGCGttcgCGCGGCtatctgttTTTTTTt*</u>agctgtcaccggatgtgctttccggtctgatgagtccgtgaggacgaaacagcctcCCAGGATACATAGATTACCACAACTCCGAGCCCTTCCACC |
| Expression: Max | IN_1 | I{u1d} [], [d~20~ Thyb10] | gaagtctaacgctgctctgggctaactgtcCATTACTCGCATCCATTCTCAGGCTGTCTCGTCTCGTCTC<u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCAAATACTTAATACAAAATAATCACTTCACAACATCA*ataatcAGATAACAGATACttcgGtatctgttatctgttTTTTTTcAACAGATAGCCGCGttcgCGCGGCtatctgttTTTTTT*t</u>agctgtcaccggatgtgctttccggtctgatgagtccgtgaggacgaaacagcctcCCAGGATACATAGATTACCACAACTCCGAGCCCTTCCACC |
| Expression: Low | IN_2 | I{u1} [], [Thyb10] | gaagtctaacgctgctctgggctaactgtcCATTACTCGCATCCATTCTCAGGCTGTCTCGTCTCGTCTC<u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCATCACTTCACAACATCA*ataatcAGATAACAGATACttcgGtatctgttatctgttTTTTTTcAACAGATAGCCGCGttcgCGCGGCtatctgttTTTTTTt*</u>agctgtcaccggatgtgctttccggtctgatgagtccgtgaggacgaaacagcctcCCAGGATACATAGATTACCACAACTCCGAGCCCTTCCACC |
| Expression: Medium | IN_3 | I{u1d} [], [d~5~ Thyb10] | gaagtctaacgctgctctgggctaactgtcCATTACTCGCATCCATTCTCAGGCTGTCTCGTCTCGTCTC<u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCAATAATCACTTCACAACATCA*ataatcAGATAACAGATACttcgGtatctgttatctgttTTTTTTcAACAGATAGCCGCGttcgCGCGGCtatctgttTTTTTTt*</u>agctgtcaccggatgtgctttccggtctgatgagtccgtgaggacgaaacagcctcCCAGGATACATAGATTACCACAACTCCGAGCCCTTCCACC |
| Expression: High | IN_4 | I{u1d} [], [d~10~ Thyb10] | gaagtctaacgctgctctgggctaactgtcCATTACTCGCATCCATTCTCAGGCTGTCTCGTCTCGTCTC<u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCAACAAAATAATCACTTCACAACATCA*ataatcAGATAACAGATACttcgGtatctgttatctgttTTTTTTcAACAGATAGCCGCGttcgCGCGGCtatctgttTTTTTTt*</u>agctgtcaccggatgtgctttccggtctgatgagtccgtgaggacgaaacagcctcCCAGGATACATAGATTACCACAACTCCGAGCCCTTCCACC |
:::

**Table 4:** DNA templates for full THE riboregulator transcription (TX) unit. **Bold** sequences indicate promoters. Underlined sequences indicate complementary regions for overlap PCR. *Italic* sequences indicate terminators. Annotated sequence maps can be found on Benchling: [Link](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/).

:::{table} DNA templates for full THE riboregulator transcription (TX) unit.
:label: tbl-4
:align: center
| **Full TX unit** | **Short name** | **Full name** | **Sequence** |
| --- | --- | --- | --- |
| Full TX unit T7t sCFP3A | G_1 T7t sCFP3A | G{u1,rbs2} [s~4~u], [], [R3 sCFP3A tDF30PPr T7t] | <u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCACTACATCCACATACTACCTCCTTTACTTCACATTCGGGTCGGCATGGCATGTGCACCTCCTCGCGGTCCGACCTGGGCTACTTCGGTAGGCTAAGGCACAGTATGATGTTGTGAAGTGAAGGAGGATATAAATGAAACAGAACAAAGAACAG</u>TTAGTCAGTAAAGGTGAAGAATTATTTACCGGTGTTGTACCGATATTAGTCGAACTGGACGGTGACGTAAACGGACATAAGTTCTCTGTAAGTGGAGAAGGTGAAGGGGATGCCACCTACGGGAAATTGACGCTGAAATTTATTTGCACGACAGGGAAACTGCCAGTCCCCTGGCCTACTCTGGTAACCACACTTACGTGGGGGGTTCAGTGCTTTGCACGCTATCCCGACCATATGAAGCAGCACGATTTTTTCAAATCTGCGATGCCGGAGGGCTATGTGCAAGAACGGACCATTTTCTTTAAGGACGATGGTAACTATAAAACTCGCGCCGAAGTTAAATTTGAAGGTGACACTTTGGTCAACCGTATAGAACTGAAGGGGATAGATTTTAAGGAAGATGGTAATATCCTTGGTCACAAGTTGGAATACAACTACATCAGCGATAATGTATACATCACAGCCGACAAGCAAAAAAACGGTATCAAAGCAAACTTCAAAATACGTCACAACATCGAGGACGGTGGAGTCCAGCTGGCCGACCACTACCAGCAGAACACCCCAATAGGCGACGGACCTGTTCTTCTGCCAGACAACCACTACCTTTCGACTCAATCAAAGCTTTCAAAGGATCCTAACGAGAAACGGGATCATATGGTGTTGCTTGAGTTCGTTACGGCAGCTGGTATAACCTTGGGGATGGACGAACTTTACAAATAATAAAAAGCCCGGATAGCTCAGTCGGTAGAGCAGCGGCCGGTTGCCATGTGTATGTGGGCCAATCGTGGCGTGTCGGCCTGCTTCGGCAGGCACTGGCGCCGCCCACATACTCTGATGATCCCCAATCGTAGCGTGTCGGGGTGCGCTTGCACCCACTGGCGCTGGGATCATTCATGGCAACGGCCGCGGGTCCAGGGTTCAAGTCCCTGTTCGGGCGCCA*ctagcataaccccttggggcctctaaacgggtcttgaggggttttttg* |
| Full TX unit T7t sfGFP | G_1 T7t sfGFP | G{u1,rbs2} [s~4~u], [], [R3 sfGFP tDF30PPr T7t] | <u>TTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCACTACATCCACATACTACCTCCTTTACTTCACATTCGGGTCGGCATGGCATGTGCACCTCCTCGCGGTCCGACCTGGGCTACTTCGGTAGGCTAAGGCACAGTATGATGTTGTGAAGTGAAGGAGGATATAAATGAAACAGAACAAAGAACAG</u>ATGAGCAAAGGTGAAGAACTGTTTACCGGCGTTGTGCCGATTCTGGTGGAACTGGATGGCGATGTGAACGGTCACAAATTCAGCGTGCGTGGTGAAGGTGAAGGCGATGCCACGATTGGCAAACTGACGCTGAAATTTATCTGCACCACCGGCAAACTGCCGGTGCCGTGGCCGACGCTGGTGACCACCCTGACCTATGGCGTTCAGTGTTTTAGTCGCTATCCGGATCACATGAAACGTCACGATTTCTTTAAATCTGCAATGCCGGAAGGCTATGTGCAGGAACGTACGATTAGCTTTAAAGATGATGGCAAATATAAAACGCGCGCCGTTGTGAAATTTGAAGGCGATACCCTGGTGAACCGCATTGAACTGAAAGGCACGGATTTTAAAGAAGATGGCAATATCCTGGGCCATAAACTGGAATACAACTTTAATAGCCATAATGTTTATATTACGGCGGATAAACAGAAAAATGGCATCAAAGCGAATTTTACCGTTCGCCATAACGTTGAAGATGGCAGTGTGCAGCTGGCAGATCATTATCAGCAGAATACCCCGATTGGTGATGGTCCGGTGCTGCTGCCGGATAATCATTATCTGAGCACGCAGACCGTTCTGTCTAAAGATCCGAACGAAAAAGGCACGCGGGACCACATGGTTCTGCACGAATATGTGAATGCGGCAGGTATTACGTGGAGCCATCCGCAGTTCGAAAAATAATATGCCCGGATAGCTCAGTCGGTAGAGCAGCGGCCGGTTGCCATGTGTATGTGGGCCAATCGTGGCGTGTCGGCCTGCTTCGGCAGGCACTGGCGCCGCCCACATACTCTGATGATCCCCAATCGTAGCGTGTCGGGGTGCGCTTGCACCCACTGGCGCTGGGATCATTCATGGCAACGGCCGCGGGTCCAGGGTTCAAGTCCCTGTTCGGGCGCCA*ctagcataaccccttggggcctctaaacgggtcttgaggggttttttg* |
:::

**Table 5:** DNA templates for assembling THE riboregulators with overlap PCR. **Bold** sequences indicate promoters. Underlined sequences indicate complementary regions for overlap PCR. *Italic* sequences indicate terminators. Annotated sequence maps can be found on Benchling: [Link](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/).

:::{table} DNA templates for assembling THE riboregulators with overlap PCR.
:label: tbl-5
:align: center
| **Component** | **Short name** | **Full name** | **Sequence** |
| --- | --- | --- | --- |
| 5' UTR | G_1 | G{u1,rbs2} [s~4~u], [], [R3] | ataggagccgcgaagtctaacgctgctctgggctaactgtccgcatctagacttaactgagatattaccatagatgactagccattcctctagatactacgactagcatacTTC**TAATACGACTCACTATA**GGGAGATTCGTCTCCCACTACATCCACATACTACCTCCTTTACTTCACATTCGGGTCGGCATGGCATGTGCACCTCCTCGCGGTCCGACCTGGGCTACTTCGGTAGGCTAAGGCACAGTATGATGTTGTGAAGTGAAGGAGG<u>ATATAAATGAAACAGAACAAAGAACAG</u> |
| sCFP3A-PPr CDS | sCFP3A | sCFP3A tDF30PPr | <u>ATATAAATGAAACAGAACAAAGAACAG</u>TTAGTCAGTAAAGGTGAAGAATTATTTACCGGTGTTGTACCGATATTAGTCGAACTGGACGGTGACGTAAACGGACATAAGTTCTCTGTAAGTGGAGAAGGTGAAGGGGATGCCACCTACGGGAAATTGACGCTGAAATTTATTTGCACGACAGGGAAACTGCCAGTCCCCTGGCCTACTCTGGTAACCACACTTACGTGGGGGGTTCAGTGCTTTGCACGCTATCCCGACCATATGAAGCAGCACGATTTTTTCAAATCTGCGATGCCGGAGGGCTATGTGCAAGAACGGACCATTTTCTTTAAGGACGATGGTAACTATAAAACTCGCGCCGAAGTTAAATTTGAAGGTGACACTTTGGTCAACCGTATAGAACTGAAGGGGATAGATTTTAAGGAAGATGGTAATATCCTTGGTCACAAGTTGGAATACAACTACATCAGCGATAATGTATACATCACAGCCGACAAGCAAAAAAACGGTATCAAAGCAAACTTCAAAATACGTCACAACATCGAGGACGGTGGAGTCCAGCTGGCCGACCACTACCAGCAGAACACCCCAATAGGCGACGGACCTGTTCTTCTGCCAGACAACCACTACCTTTCGACTCAATCAAAGCTTTCAAAGGATCCTAACGAGAAACGGGATCATATGGTGTTGCTTGAGTTCGTTACGGCAGCTGGTATAACCTTGGGGATGGACGAACTTTACAAATAATAAAAAGCCCGGATAGCTCAGTCGGTAGAGCAGCGGCCGGTTGCCATGTGTATGTGGGCCAATCGTGGCGTGTCGGCCTGCTTCGGCAGGCACTGGCGCCGCCCACATACTCTGATGATCCCCAATCGTAGCGTGTCGGGGTGCGCTTGCACCCACTGGCGCTGGGATCATTCATGGCAACGGCCGCGGGTCCAGGGTTCAAGTCCCTGTTCGGGCGCCA*ctagcataaccccttggggcctctaaacgggtcttgaggggttttttg* |
| sfGFP-PPr CDS | sfGFP | sfGFP tDF30PPr | <u>ATATAAATGAAACAGAACAAAGAACAG</u>ATGAGCAAAGGTGAAGAACTGTTTACCGGCGTTGTGCCGATTCTGGTGGAACTGGATGGCGATGTGAACGGTCACAAATTCAGCGTGCGTGGTGAAGGTGAAGGCGATGCCACGATTGGCAAACTGACGCTGAAATTTATCTGCACCACCGGCAAACTGCCGGTGCCGTGGCCGACGCTGGTGACCACCCTGACCTATGGCGTTCAGTGTTTTAGTCGCTATCCGGATCACATGAAACGTCACGATTTCTTTAAATCTGCAATGCCGGAAGGCTATGTGCAGGAACGTACGATTAGCTTTAAAGATGATGGCAAATATAAAACGCGCGCCGTTGTGAAATTTGAAGGCGATACCCTGGTGAACCGCATTGAACTGAAAGGCACGGATTTTAAAGAAGATGGCAATATCCTGGGCCATAAACTGGAATACAACTTTAATAGCCATAATGTTTATATTACGGCGGATAAACAGAAAAATGGCATCAAAGCGAATTTTACCGTTCGCCATAACGTTGAAGATGGCAGTGTGCAGCTGGCAGATCATTATCAGCAGAATACCCCGATTGGTGATGGTCCGGTGCTGCTGCCGGATAATCATTATCTGAGCACGCAGACCGTTCTGTCTAAAGATCCGAACGAAAAAGGCACGCGGGACCACATGGTTCTGCACGAATATGTGAATGCGGCAGGTATTACGTGGAGCCATCCGCAGTTCGAAAAATAATATGCCCGGATAGCTCAGTCGGTAGAGCAGCGGCCGGTTGCCATGTGTATGTGGGCCAATCGTGGCGTGTCGGCCTGCTTCGGCAGGCACTGGCGCCGCCCACATACTCTGATGATCCCCAATCGTAGCGTGTCGGGGTGCGCTTGCACCCACTGGCGCTGGGATCATTCATGGCAACGGCCGCGGGTCCAGGGTTCAAGTCCCTGTTCGGGCGCCA*ctagcataaccccttggggcctctaaacgggtcttgaggggttttttg* |
:::

# Protocol

## Preparation of HBC620 Pepper dye stock solution

*The HBC620 dye is not necessary to assess THE riboregulator
performance, but it does provide a measurement of transcription rate in
an experiment. It should only be included if the RNA component you are
testing encodes for the Pepper RNA aptamer, otherwise no signal will be
produced.*

1. Centrifuge the tube containing lyophilized HBC620 dye to ensure all
   the dye is at the bottom of the tube.

2. In a chemical fume hood, prepare a 10 mM stock solution by adding
   100 % DMSO to the HBC620 dye tube (273.6 µL DMSO per 1 mg of HBC620
   dye).

3. Vortex thoroughly until dye is dissolved.

4. Wrap tube in aluminum foil to prevent photobleaching.

5. Store at -20 °C when not in use.

## Preparation of the molecular beacon (optional)

*The molecular beacon is not strictly necessary to assess THE
riboregulator performance, but it does provide a complementary
measurement to fluorescent protein expression for strand exchange and
can provide mechanistic insight. It is useful to include in experiments
in which translation is absent or inhibited, such as experiments in PURE
lacking ribosomes or elongation factors, as this enables measurement of
strand exchange without fluorescent protein production.*

1. Centrifuge tubes containing lyophilized DNA to ensure all the DNA is
   at the bottom of the tube.

2. Using nuclease free water, resuspend lyophilized DNA to 100 µM
   concentration (10 µL of water per 1 nmol of DNA).

3. Vortex thoroughly until DNA is dissolved.

4. In a 200 µL PCR tube, prepare 20 µM molecular beacon solution for
   thermal annealing (Table 6).

**Table 6**: Molecular beacon solution.

:::{table} Molecular beacon solution.
:label: tbl-6
:align: center
| **Component** | **Volume** |
| --- | --- |
| Nuclease free water | 40 µL |
| 5x txn buffer | 20 µL |
| 100 µM R{x2}-F-2omR | 20 µL |
| 100 µM R{rbs2}-Q-2omR | 20 µL |
:::

5. In a thermocycler, run the following thermal annealing protocol
   (Table 7).

**Table 7**: Molecular beacon thermal annealing protocol.

:::{table} Molecular beacon thermal annealing protocol.
:label: tbl-7
:align: center
| **Step** | **Temperature** | **Time** | **Iterations** |
| --- | --- | --- | --- |
| Initial denaturation | 90 °C | 5 min | 1 |
| 90 °C to 80 °C ramp | -1 °C/min | 1 min | 9 |
| 80 °C to 70 °C ramp | -1 °C/min | 1 min | 9 |
| 70 °C to 60 °C ramp | -1 °C/min | 1 min | 9 |
| 60 °C to 50 °C ramp | -1 °C/min | 1 min | 9 |
| 50 °C to 40 °C ramp | -1 °C/min | 1 min | 9 |
| 40 °C to 30 °C ramp | -1 °C/min | 1 min | 9 |
| 30 °C to 20 °C ramp | -1 °C/min | 1 min | 9 |
| Hold | 4 °C | Hold | 1 |
:::

6. Store annealed molecular beacon at -20 °C when not in use.

## Preparation of linear DNA templates

*Linear PCR product templates are recommended as they are simpler to
work with and less prone to variability from preparation-to-preparation
compared to plasmid extractions. We also find that linear PCR product
templates produce higher fluorescent signals in PURE than plasmid
templates.*

*Gene fragments containing full transcription units (spanning a promoter
sequence to terminator sequence) can be ordered (Tables 3 and 4) and PCR
amplified as shown in Table 8. Alternatively, for THE riboregulator
gates, a single gene fragment spanning the N-terminal linker sequence to
the terminator sequence of the gate can be ordered and the 5' UTR and
promoter of the gate can be ordered separately and appended with overlap
PCR (Table 5). This reduces cost and increases flexibility as multiple
short 5' UTR sequences can be ordered and appended to the single protein
coding sequence. Table 9 shows how to set up the overlap extension PCR.*

1. Prepare DNA templates:

   a. If ordering DNA as gBlock gene fragments, resuspend DNA to 10
      ng/µL in nuclease free water.

   b. If ordering DNA as eBlock gene fragments, the DNA will come at
      10 ng/µL in IDTE buffer and can be used directly.

2. Prepare DNA primers:

   a. Centrifuge tubes containing lyophilized DNA to ensure all the
      DNA is at the bottom of the tube.

   b. Using nuclease free water, resuspend lyophilized DNA to 100 µM
      concentration (10 µL of water per 1 nmol of DNA).

   c. Vortex thoroughly until DNA is dissolved.

3. In a 200 µL PCR tube prepare PCR solution (Table 8).

**Table 8a:** PCR solution for DNA templates that contain full
transcription units (promoter to terminator). See sequences in Table 3
and Table 4.

:::{table} PCR solution for DNA templates that contain full transcription units (promoter to terminator).
:label: tbl-8a
:align: center
| **Component** | **Volume** |
| --- | --- |
| Nuclease free water | 36.6 µL |
| 2x PCR master mix | 37.5 µL |
| 100 µM T7fwd primer | 0.375 µL |
| 100 µM Thyb10rev primer | 0.375 µL |
| 10 ng/uL DNA template | 0.15 µL |
:::

**Table 8b:** PCR solution for overlap PCR to produce THE riboregulators
by appending 5' UTR sequence to downstream protein coding sequence. See
sequences in Table 5.

:::{table} PCR solution for overlap PCR.
:label: tbl-8b
:align: center
| **Component** | **Volume** |
| --- | --- |
| Nuclease free water | 36.6 µL |
| 2x PCR master mix | 37.5 µL |
| 100 µM T7fwd primer | 0.375 µL |
| 100 µM T7rev primer | 0.375 µL |
| 10 ng/uL 5UTR template | 0.15 µL |
| 10 ng/uL CDS template | 0.45 µL |
:::

4. In a thermocycler, run the following protocol (Table 9). The same
   protocol can be used for single template PCR or overlap extension
   PCR.

**Table 9**: Molecular beacon thermal annealing protocol.<!-- REVIEW: title in source appears to be mislabeled — content is a PCR thermocycler protocol, not molecular beacon annealing -->

:::{table} Molecular beacon thermal annealing protocol.
:label: tbl-9
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

5. Purify the PCR products from the reactions with the PureLink PCR
   cleanup kit.

   a. Add 300 µL of B2 buffer to PureLink column.

   b. Add all 75 µL of PCR reaction the PureLink column and pipette
      mix with B2 buffer ~10 times.

   c. Centrifuge PureLink column at 13000 rpm for 1 min, discard flow
      through

   d. For overlap PCR products, a 300 µL wash with B3 buffer is
      recommended to remove short secondary products. DO NOT DO THIS
      FOR SHORT TEMPLATES THAT ENCODE INPUT RNAS or a lot of DNA will
      be lost.

      i. Add 300 µL of B3 buffer and repeat step c.

   e. Add 650 µL Wash buffer to PureLink column and repeat step c.

   f. Repeat step c. one more time to remove any residual Wash buffer

   g. Add 35 µL of PureLink Elution buffer and let the column sit at
      room temperature for ~2 min.

   h. Move PureLink column to a fresh collection tube and centrifuge
      at 13000 rpm for 1 min.

   i. Save collection tube with eluted DNA.

6. Measure the concentration of the purified PCR product using A260
   absorbance measurements (Nanodrop) or fluorogenic measurements
   (Qubit).

   a. For PCR products we find these two measurements are fairly
      similar. Qubit measurements were used in our published work.

7. Purified PCR products can be stored at -20 °C when not in use.

## Preparation of plasmid templates

Methods for plasmid extraction can be found in Ref 1.<!-- REVIEW: "Ref 1" in source is Zhang & Winfree (toehold exchange) — does not appear to be a plasmid extraction reference; confirm correct citation before publishing --> Additional details
on best practices for DNA plasmid preparation for cell-free expression
systems can be found in [](https://doi.org/10.1093/synbio/ysac015).

To obtain similar results to linear templates with plasmid templates, we
have identified three crucial points:

1. After plasmid extraction from cells a secondary PCR clean up should
   be performed on the plasmids (we use the PureLink kit specified in
   materials)

2. We found high copy number plasmids produced results most comparable
   to linear templates. Low copy number plasmids (~10 copies) deviated
   from linear template results even when using nominally the same
   concentrations.

3. For plasmids Qubit concentration measurements are necessary to get
   close correlation to linear template results. Nanodrop measurements
   indicate much higher plasmid concentrations than Qubit measurements;
   this difference is not as great for linear templates.

## Kinetic plate reader experiments

*This protocol is for experiments demonstrating how to use toehold
exchange riboregulators to obtain translational control of protein
expression. Translation strength is controlled by varying the length of
the* d *domain on the input strand. We will test 4 different* d *domain
lengths: 1-base (low expression), 5-base (medium expression), 10-base
(high expression), and 20-base (maximum expression). Additionally, we
include a control that uses a decoy input (Io) that is not complementary
to the toehold exchange riboregulator. This serves as the OFF state for
the system. Io is included so that all 5 samples have the same total
concentration of DNA template. This keeps the transcriptional load
across all the samples the same to enable direct comparison of
translational differences due to differences in* d *domain length. For
experiments that vary the concentration of complementary inputs, we
recommend adding Io to each sample such that the total DNA template
concentration across all the samples is the same.*

*The protocol below is for testing the 5 samples described above with 3
technical replicates for each sample. The volumes of DNA templates to
add to the reactions are based on stock concentrations of 100 nM.*

1. Thaw cell-free expression reagents from -80 °C on ice.

   a. PURExpress Solution A and Solution B or

   b. Nucleus SMix, PMix, tRNA, and ribosomes

2. Thaw DNA templates (purified PCR products or plasmids), annealed
   molecular beacon, and HBC620 dye stock solution from -20 °C at
   room temperature.

3. While solutions are thawing, set up the plate reader protocol

   a. Incubate samples at 37 °C

   b. Set the protocol to conduct fluorescence measurements every 5
      min, reading from the bottom of the plate

   c. Set wavelengths for fluorescence measurements as described in
      Table 10

> **Table 10**: Excitation and emission settings for the plate reader,
> assuming the plate reader has a monochromator.

:::{table} Excitation and emission settings for the plate reader, assuming the plate reader has a monochromator.
:label: tbl-10
:align: center
| **Component** | **EX (nm)** | **EM (nm)** | **Bandwidth** | **Gain** |
| --- | --- | --- | --- | --- |
| sCFP3A | 430 | 475 | 10 | 85 |
| Molecular beacon (MB) | 524 | 565 | 20 | 80 |
| Pepper-HBC620 complex | 577 | 620 | 20 | 75 |
| sfGFP | 485 | 510 | 10 | 75 |
:::

4. Add the DNA templates to 0.5 mL DNA LoBind tubes as specified in the
   first 4 columns of Table 11, then cap tubes.

   a. *Note the volumes in Table 11 assume 3 technical replicates with
      10 % excess volume*

**Table 11**: Volumes of DNA templates (from 100 nM stock
concentrations) and Master Mix to add to 0.5 mL DNA LoBind tubes for each
sample. These volumes assume 3 technical replicates for each sample with
10 % excess volume.

:::{table} Volumes of DNA templates and Master Mix per sample.
:label: tbl-11
:align: center
| **DNA template 1** | **Volume (µL) per 33 µL** | **DNA template 2** | **Volume (µL) per 33 µL** | **Master Mix volume (µL)** |
| --- | --- | --- | --- | --- |
| Io | 1.65 | G_1 | 1.65 | 29.70 |
| IN_2 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_3 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_4 | 1.65 | G_1 | 1.65 | 29.70 |
| IN_1 | 1.65 | G_1 | 1.65 | 29.70 |
:::

5. Prepare Master Mix in Table 12a (PURExpress) or Table 12b (Nucleus
   Cytosol) in a 1.7 mL or 2 mL microfuge tube.

6. Pipette mix the Master Mix with a pipette volume set to 50 µL.

**Table 12a**: Components and volumes for reactions in PURExpress. The
Volume column is how much to add for one sample assuming 3x technical
replicates with 20 % excess. The Master Mix column is how much of each
component to add to prepare the master mix for all 5 reactions in this
demonstration. *Solution A must be added before Solution B.*

:::{table} Components and volumes for reactions in PURExpress.
:label: tbl-12a
:align: center
| **Component** | **[Stock] nmol/L** | **[Final] nmol/L** | **Volume (µL) per 36 µL** | **Master Mix (5 samples)** |
| --- | --- | --- | --- | --- |
| Solution A | — | — | 14.40 | 72.00 |
| Solution B | — | — | 10.80 | 54.00 |
| Molecular beacon (MB) | 20000 | 500 | 0.90 | 4.50 |
| HBC620 dye | 1000000 | 5000 | 0.18 | 0.90 |
| H2O | — | — | 6.12 | 30.60 |
| DNA templates | 100 | 5 | Individually | Individually |
:::

**Table 12b**: Components and volumes for reactions in Nucleus Cytosol.
The Volume column is how much to add for one sample assuming 3x
technical replicates with 20 % excess. The Master Mix column is how much
of each component to add to prepare the master mix for all 5 reactions
in this demonstration.

:::{table} Components and volumes for reactions in Nucleus Cytosol.
:label: tbl-12b
:align: center
| **Component** | **[Stock] nmol/L** | **[Final] nmol/L** | **Volume (µL) per 36 µL** | **Master Mix (5 samples)** |
| --- | --- | --- | --- | --- |
| SMix | 10000 | 3000 | 10.80 | 54.00 |
| tRNA | 10000 | 1000 | 3.60 | 18.00 |
| PMix | 10000 | 1200 | 4.32 | 21.60 |
| Ribosomes | 10000 | 2400 | 8.64 | 43.20 |
| Molecular beacon (MB) | 20000 | 500 | 0.90 | 4.50 |
| HBC620 dye | 1000000 | 5000 | 0.18 | 0.90 |
| H2O | — | — | 0.96 | 4.80 |
| DNA templates | 100 | 5 | Individually | Individually |
:::

7. Add the volume of Master Mix specified in the 5th column of Table
   11 to each of the DNA LoBind tubes.

8. Pipette mix each of the samples upon addition of the Master Mix.

9. Take 10 µL at a time from each sample in DNA LoBind tubes and
   transfer to a well in a 384-well plate; there should be 3 wells for
   each sample, corresponding to 3 technical replicates.

10. Check for bubbles and apply a clear plastic cover sheet to the
    plate.

11. Put the plate in plate reader and run the protocol.

12. Let reaction run for at least 4 hours.

13. Stop or pause the experiment in the plate reader software and remove
    the plate.

14. Add 3 µL of 10 µmol/L MB trigger RNA to each reaction well and
    pipette mix.

    a. *This step is only needed when using the molecular beacon (MB)*

    b. *Addition of excess MB trigger RNA will cause all of the MB
       molecules in each well to react and release a fluorescent
       strand, allowing for an internal maximum fluorescence value of
       MB normalization in each well*

15. Cover plate with a clear sheet, put back in the plate reader, and
    continue the measurements.

16. Let the reaction proceed for another hour or leave overnight.

17. Stop the experiment and export the data for analysis.

# Results

<!-- RENAMED: "Performance data" → "Results" to match style guide -->

:::{figure} ./figures/purexpress-results.png
:label: fig2
:align: center
:width: 90%

**Figure 2**: Experimental results in PURExpress. Kinetic results of a
THE riboregulator cotranscribed with input RNAs possessing *d* domains
of increasing length. Lines and shading in each plot represent the mean
and standard deviation, respectively, from 3 technical replicates. The
fluorogenic Pepper aptamer provides a measure of initial transcription
rate of the gate, the molecular beacon provides a measure of output RNA
release, and CFP provides a measure of translation rate from the gate in
the ON state.
:::

:::{figure} ./figures/cytosol-results.png
:label: fig3
:align: center
:width: 90%

**Figure 3**: Experimental results in Nucleus Cytosol. Kinetic results
of a THE riboregulator cotranscribed with input RNAs possessing *d*
domains of increasing length. Only a single replicate was run for each
sample in these experiments. The fluorogenic Pepper aptamer provides a
measure of initial transcription rate of the gate, the molecular beacon
provides a measure of output RNA release, and CFP provides a measure of
translation rate from the gate in the ON state.
:::

<!-- REVIEW: Conclusions section not present in source — add before publishing -->

# References and Resources

## Papers

1. **DNA toehold-mediated strand exchange reactions:** [Link](https://pubs.acs.org/doi/10.1021/ja906987s)

2. **THE riboregulators in cell-free expression systems:** [Link](https://www.biorxiv.org/content/10.1101/2025.09.25.678518v2.full)

3. **THE riboregulators in bacteria:** [Link](https://www.biorxiv.org/content/10.1101/2025.09.24.678369v1.full)

4. **Original description of ctRSD circuits:** [Link](https://www.science.org/doi/full/10.1126/sciadv.abl4354)

5. **The ctRSD toolkit:** [Link](https://pubs.acs.org/doi/abs/10.1021/acssynbio.3c00079)

6. **An alternative design for producing dsRNA gates:** [Link](https://pubs.acs.org/doi/abs/10.1021/acs.nanolett.0c03629)

7. **Ribosome standby site and translation strength:** [Link](https://academic.oup.com/nar/article/42/4/2646/2435298)

8. **Best practices for plasmid template extraction:** [Link](https://academic.oup.com/synbio/article/7/1/ysac015/6664141)

## Resources

- **ctRSD and THE riboregulator sequence compiler**

  - Documentation: [Link](https://ctrsd-simulator.readthedocs.io/en/latest/SeqCompiler.html)

  - CoLab: [Link](https://colab.research.google.com/drive/1Bd-ZugIWnc7PMiFkpaia_UnWA24KF3Mv?usp=sharing)

- **Annotated sequence / plasmid maps**

  - Benchling: [Link](https://benchling.com/sschafft1/f_/mW2x3M1k3j-toehold-exchange-riboregulator-published-sequences/)

# Credits

## Developers

- NIST Cellular Engineering Group [Link](https://www.nist.gov/mml/bbd/cellular-engineering-group)

  - Samuel Schaffter, Fernanda Piorino, Eugenia Romantseva
