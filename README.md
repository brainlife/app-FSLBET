# app-FSLBET

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

**Brain Extraction via FSL's BET command**

Test registration of the master branch of app-FSLBET. The code runs FSL bet (brainlife/fsl:6.0.4) on the image in config key input and reads an fthreshold parameter, but the registry record declares an input keyed t2 and no parameters, so the App does not match its code; use the 'FSL Brain Extraction (BET)' Apps on branch 2.0 instead.

Run it on brainlife.io: [https://doi.org/10.25663/brainlife.app.791](https://doi.org/10.25663/brainlife.app.791)

| Input | Datatype | Required | Description |
|---|---|---|---|
| `t2` | `neuro/anat/t2w` | yes |  |

| Output | Datatype | Description |
|---|---|---|
| `mask` | `neuro/anat/t2w` |  |

Runtime: container `brainlife/fsl:6.0.4`; 4 GB memory; 0.25 h walltime.

<!-- brainlife-app:end -->

Brain Extraction via FSL's BET command
