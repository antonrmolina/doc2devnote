**Title:** PURExpress Cytosol Assembly with Broccoli 2/mScarlet Reporter

**Author(s):** Emily Cook and Suna Nguyen

**Email:** <ecook11@calpoly.edu>, <snguy230@calpoly.edu>

**Institution:** California Polytechnic University, San Luis Obispo

**Date:** April 3, 2026

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

# Bill of materials

  ----------------------------------------------------------------------------------------------------
  **Reagent**     **Product       **Manufacturer**   **Catalog   **Price**   **Storage      **Link**
                  Name**                             No.**                   Conditions**   
  --------------- --------------- ------------------ ----------- ----------- -------------- ----------
  PURExpress      PURExpress      New England                                -20 °C; thaw   
  Solution A      Solution A with Biolabs                                    and hold on    
                  CP/CK energy                                               ice            
                  system                                                                    

  PURExpress      PURExpress      New England                                -20 °C; thaw   
  Solution B      ribosome        Biolabs                                    and hold on    
                  solution                                                   ice; do not    
                                                                             vortex         

  RNase inhibitor RNase inhibitor                                                           

  DNA template    Broccoli 2                                                                
                  mScarlet DNA                                                              
                  template, 48.4                                                            
                  ng/µL                                                                     

  DFHBI           Fluorogen for                                                             
                  Broccoli                                                                  
                  aptamer                                                                   

  Nuclease-free   Nuclease-free                                                             
  H2O             water                                                                     

  384-well plate  Black optical                                                             
                  384-well plate                                                            
  ----------------------------------------------------------------------------------------------------

# Protocol

## Reaction setup table

  ------------------------------------------------------------------------------------
  **Component**   **Stock           **Final           **+PURE    **+PURE    **-PURE
                  Concentration**   Concentration**   Rep 1      Rep 2      Control
                                                      \[µL\]**   \[µL\]**   \[µL\]**
  --------------- ----------------- ----------------- ---------- ---------- ----------
  Solution A                                          8.0        8.0        8.0

  Solution B                                          6.0        6.0        6.0

  RNase inhibitor                                     0.5        0.5        0.5

  DNA template:   48.4 ng/µL        \~5 ng/µL         2.1        2.1        0
  Broccoli 2                                                                
  mScarlet                                                                  

  Nuclease-free                                       1.43       1.43       3.5
  H2O                                                                       

  DFHBI                                               2.0        2.0        2.0

  Total                                               20         20         20
  ------------------------------------------------------------------------------------

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

# Results and Observations

Fluorescence was tracked over 4 hours for both the RNA aptamer signal
and mScarlet protein production. The plotted data showed increasing
fluorescence in the positive reactions, while the no-DNA controls
remained close to baseline. This supports successful transcription and
translation in the PURExpress reaction and confirms that the observed
signal was template-dependent.

![](/Users/antonmolina/Documents/code/nucleus-publish/doc2devnote/input-docs/Team 3 - PURExpress Cytosol Assembly with Broccoli 2 & mScarlet Reporter/figures/media/image1.png){width="6.900014216972878in"
height="4.615008748906387in"}

**Figure 1.** Broccoli 2 (48.4 ng/ µL) and mScarlet fluorescence
kinetics in a PURExpress CFPS reaction. Broccoli fluorescence was
monitored as a readout of RNA aptamer transcription, while mScarlet
fluorescence was monitored as a readout of protein production.

# References / source notes

- CHEM 471 Engineering Synthetic Cells Laboratory Manual, Experiment 1 -
  Cytosol Assembly.
