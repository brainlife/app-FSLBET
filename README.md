<h1 align="center">FSL Brain Extraction (BET)</h1>

<p align="center">
  Skull-stripped images and binary brain masks from T1-weighted, T2-weighted, FLAIR, DWI and BOLD data with FSL BET, or brain extraction with an existing mask.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.755"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.755-blue.svg" alt="Run on brainlife.io"></a>
  <a href="https://github.com/brainlife/app-FSLBET/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-lightgrey.svg" alt="MIT license"></a>
</p>

> **This branch, `apply-mask-v1.0`, runs 5 brainlife.io Apps** that share the same code:
>
> - Apply mask to extract brain data - DWI ([doi:10.25663/brainlife.app.755](https://doi.org/10.25663/brainlife.app.755))
> - Apply mask to extract brain data - BOLD ([doi:10.25663/brainlife.app.754](https://doi.org/10.25663/brainlife.app.754))
> - Apply mask to extract brain data - FLAIR ([doi:10.25663/brainlife.app.753](https://doi.org/10.25663/brainlife.app.753))
> - Apply mask to extract brain data - T2 ([doi:10.25663/brainlife.app.752](https://doi.org/10.25663/brainlife.app.752))
> - Apply mask to extract brain data - T1 ([doi:10.25663/brainlife.app.751](https://doi.org/10.25663/brainlife.app.751))
>
> The other Apps in this repository are listed under **Versions on brainlife.io** below.

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

### Apply mask to extract brain data - DWI

> **Applies an existing brain mask to a diffusion-weighted image with FSL fslmaths -mas and outputs the brain-extracted DWI datatype.**

Multiplies the diffusion-weighted image by a provided binary brain mask (fslmaths -mas) instead of estimating a new one. Use it when a brain mask already exists, for example from another skull-stripping App, and you want the same mask applied to this image. The mask must be in the same space and grid as the image. Other files of the input datatype are copied to the output unchanged.

| | |
|---|---|
| **Inputs** | `neuro/dwi` · `neuro/mask` |
| **Outputs** | `neuro/dwi` |
| **Container** | `brainlife/fsl:6.0.1` |
| **Resources** | 2 CPUs · 0.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.755](https://doi.org/10.25663/brainlife.app.755) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `0` | `neuro/dwi` | yes | Diffusion-weighted image to mask. |
| `mask` | `neuro/mask` (brain, dwi) | yes | Binary brain mask applied to the image. Must be in the same space and voxel grid as the input image. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/dwi` | The input DWI datatype with its image multiplied by the brain mask. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | enum | `dwi` | Name used for the intermediate masked file (<type>.nii.gz); preset to match the input datatype. Options: `t1`, `t2`, `dwi`, `flair`, `bold`. |

</details>

### Apply mask to extract brain data - BOLD

> **Applies an existing brain mask to a 4D BOLD fMRI series with FSL fslmaths -mas and outputs the brain-extracted func/task datatype.**

Multiplies the 4D BOLD fMRI series by a provided binary brain mask (fslmaths -mas) instead of estimating a new one. Use it when a brain mask already exists, for example from another skull-stripping App, and you want the same mask applied to this image. The mask must be in the same space and grid as the image. Other files of the input datatype are copied to the output unchanged.

| | |
|---|---|
| **Inputs** | `neuro/func/task` · `neuro/mask` |
| **Outputs** | `neuro/func/task` |
| **Container** | `brainlife/fsl:6.0.1` |
| **Resources** | 2 CPUs · 0.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.754](https://doi.org/10.25663/brainlife.app.754) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `0` | `neuro/func/task` | yes | 4D BOLD fMRI series to mask. |
| `mask` | `neuro/mask` (brain, bold) | yes | Binary brain mask applied to the image. Must be in the same space and voxel grid as the input image. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/func/task` | The input func/task datatype with its image multiplied by the brain mask. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | enum | `bold` | Name used for the intermediate masked file (<type>.nii.gz); preset to match the input datatype. Options: `t1`, `t2`, `dwi`, `flair`, `bold`. |

</details>

### Apply mask to extract brain data - FLAIR

> **Applies an existing brain mask to a FLAIR image with FSL fslmaths -mas and outputs the brain-extracted FLAIR datatype.**

Multiplies the FLAIR image by a provided binary brain mask (fslmaths -mas) instead of estimating a new one. Use it when a brain mask already exists, for example from another skull-stripping App, and you want the same mask applied to this image. The mask must be in the same space and grid as the image. Other files of the input datatype are copied to the output unchanged.

| | |
|---|---|
| **Inputs** | `neuro/anat/flair` · `neuro/mask` |
| **Outputs** | `neuro/anat/flair` |
| **Container** | `brainlife/fsl:6.0.1` |
| **Resources** | 2 CPUs · 0.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.753](https://doi.org/10.25663/brainlife.app.753) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `0` | `neuro/anat/flair` | yes | FLAIR image to mask. |
| `mask` | `neuro/mask` (brain, anat) | yes | Binary brain mask applied to the image. Must be in the same space and voxel grid as the input image. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/flair` | The input FLAIR datatype with its image multiplied by the brain mask. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | enum | `flair` | Name used for the intermediate masked file (<type>.nii.gz); preset to match the input datatype. Options: `t1`, `t2`, `dwi`, `flair`, `bold`. |

</details>

### Apply mask to extract brain data - T2

> **Applies an existing brain mask to a T2-weighted image with FSL fslmaths -mas and outputs the brain-extracted T2w datatype.**

Multiplies the T2-weighted image by a provided binary brain mask (fslmaths -mas) instead of estimating a new one. Use it when a brain mask already exists, for example from another skull-stripping App, and you want the same mask applied to this image. The mask must be in the same space and grid as the image. Other files of the input datatype are copied to the output unchanged.

| | |
|---|---|
| **Inputs** | `neuro/anat/t2w` · `neuro/mask` |
| **Outputs** | `neuro/anat/t2w` |
| **Container** | `brainlife/fsl:6.0.1` |
| **Resources** | 2 CPUs · 0.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.752](https://doi.org/10.25663/brainlife.app.752) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `0` | `neuro/anat/t2w` | yes | T2-weighted image to mask. |
| `mask` | `neuro/mask` (brain, anat) | yes | Binary brain mask applied to the image. Must be in the same space and voxel grid as the input image. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t2w` | The input T2w datatype with its image multiplied by the brain mask. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | enum | `t2` | Name used for the intermediate masked file (<type>.nii.gz); preset to match the input datatype. Options: `t1`, `t2`, `dwi`, `flair`, `bold`. |

</details>

### Apply mask to extract brain data - T1

> **Applies an existing brain mask to a T1-weighted image with FSL fslmaths -mas and outputs the brain-extracted T1w datatype.**

Multiplies the T1-weighted image by a provided binary brain mask (fslmaths -mas) instead of estimating a new one. Use it when a brain mask already exists, for example from another skull-stripping App, and you want the same mask applied to this image. The mask must be in the same space and grid as the image. Other files of the input datatype are copied to the output unchanged.

| | |
|---|---|
| **Inputs** | `neuro/anat/t1w` · `neuro/mask` |
| **Outputs** | `neuro/anat/t1w` |
| **Container** | `brainlife/fsl:6.0.1` |
| **Resources** | 2 CPUs · 0.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.751](https://doi.org/10.25663/brainlife.app.751) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `0` | `neuro/anat/t1w` | yes | T1-weighted image to mask. |
| `mask` | `neuro/mask` (brain, anat) | yes | Binary brain mask applied to the image. Must be in the same space and voxel grid as the input image. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t1w` | The input T1w datatype with its image multiplied by the brain mask. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | enum | `t1` | Name used for the intermediate masked file (<type>.nii.gz); preset to match the input datatype. Options: `t1`, `t2`, `dwi`, `flair`, `bold`. |

</details>

<!-- brainlife-app:end -->

## Versions on brainlife.io

Each App on brainlife.io is built from a branch of this repository. Pick the App that matches your datatype.

| App | FSL | Branch | Run it | Status |
|---|---|---|---|---|
| FSL Brain Extraction (BET) on T1 | 6.0.1 | [`2.0`](https://github.com/brainlife/app-FSLBET/tree/2.0) | [doi:10.25663/bl.app.2](https://doi.org/10.25663/bl.app.2) | current |
| FSL Brain Extraction (BET) on T2 | 6.0.1 | [`2.0`](https://github.com/brainlife/app-FSLBET/tree/2.0) | [doi:10.25663/brainlife.app.156](https://doi.org/10.25663/brainlife.app.156) | current |
| FSL Brain Extraction (BET) on FLAIR | 6.0.1 | [`2.0`](https://github.com/brainlife/app-FSLBET/tree/2.0) | [doi:10.25663/brainlife.app.728](https://doi.org/10.25663/brainlife.app.728) | current |
| FSL Brain Extraction (BET) on fMRI | 6.0.1 | [`2.0`](https://github.com/brainlife/app-FSLBET/tree/2.0) | [doi:10.25663/brainlife.app.184](https://doi.org/10.25663/brainlife.app.184) | current |
| FSL Brain Extraction (BET) on DWI | 5.0.9 | [`dwi`](https://github.com/brainlife/app-FSLBET/tree/dwi) | [doi:10.25663/brainlife.app.163](https://doi.org/10.25663/brainlife.app.163) | current |
| **Apply mask to extract brain data - T1** (this branch) | 6.0.1 | [`apply-mask-v1.0`](https://github.com/brainlife/app-FSLBET/tree/apply-mask-v1.0) | [doi:10.25663/brainlife.app.751](https://doi.org/10.25663/brainlife.app.751) | current |
| **Apply mask to extract brain data - T2** (this branch) | 6.0.1 | [`apply-mask-v1.0`](https://github.com/brainlife/app-FSLBET/tree/apply-mask-v1.0) | [doi:10.25663/brainlife.app.752](https://doi.org/10.25663/brainlife.app.752) | current |
| **Apply mask to extract brain data - FLAIR** (this branch) | 6.0.1 | [`apply-mask-v1.0`](https://github.com/brainlife/app-FSLBET/tree/apply-mask-v1.0) | [doi:10.25663/brainlife.app.753](https://doi.org/10.25663/brainlife.app.753) | current |
| **Apply mask to extract brain data - BOLD** (this branch) | 6.0.1 | [`apply-mask-v1.0`](https://github.com/brainlife/app-FSLBET/tree/apply-mask-v1.0) | [doi:10.25663/brainlife.app.754](https://doi.org/10.25663/brainlife.app.754) | current |
| **Apply mask to extract brain data - DWI** (this branch) | 6.0.1 | [`apply-mask-v1.0`](https://github.com/brainlife/app-FSLBET/tree/apply-mask-v1.0) | [doi:10.25663/brainlife.app.755](https://doi.org/10.25663/brainlife.app.755) | current |
| test2 | 6.0.4 | [`master`](https://github.com/brainlife/app-FSLBET/tree/master) | [doi:10.25663/brainlife.app.791](https://doi.org/10.25663/brainlife.app.791) | test registration |
| test | — | [`t2`](https://github.com/brainlife/app-FSLBET/tree/t2) | [doi:10.25663/brainlife.app.790](https://doi.org/10.25663/brainlife.app.790) | test registration |

The two test registrations do not match their code (their registered inputs differ from the config keys `main` reads); use the BET or apply-mask Apps above instead.

## Running the App

### On brainlife.io

Open the App for your datatype from the table above (for example [doi.org/10.25663/bl.app.2](https://doi.org/10.25663/bl.app.2) for a T1-weighted image), choose the dataset from your project, set the fractional intensity threshold and press **Execute**. The BET Apps archive two datasets to your project: the input datatype with its image replaced by the brain-extracted one (tagged `brain_extracted`), and a `neuro/mask` brain mask. The apply-mask Apps take an existing `neuro/mask` instead of estimating one, and output only the brain-extracted datatype.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) and [`jq`](https://jqlang.github.io/jq/). The `brainlife/fsl` containers are pulled from Docker Hub on first use.

1. Clone this repository and check out the branch of the App you want (for example `git checkout 2.0`).
2. Create `config.json` with the path to your image and the options you want.

   BET on T1, T2, FLAIR or BOLD (branch `2.0`). If the file is named `bold.nii.gz` the App runs `bet -F` on the 4D series; otherwise it runs `bet -R`:

   ```json
   {
       "input": "/input/t1/t1.nii.gz",
       "fthreshold": 0.5
   }
   ```

   BET on DWI (branch `dwi`):

   ```json
   {
       "dwi": "/input/dwi/dwi.nii.gz",
       "bvals": "/input/dwi/dwi.bvals",
       "bvecs": "/input/dwi/dwi.bvecs",
       "fthreshold": 0.4,
       "gthreshold": 0,
       "robust": true
   }
   ```

   Apply an existing mask (branch `apply-mask-v1.0`; `type` is one of `t1`, `t2`, `flair`, `bold`, `dwi`):

   ```json
   {
       "input": "/input/t1/t1.nii.gz",
       "mask": "/input/mask/mask.nii.gz",
       "type": "t1"
   }
   ```

3. Run the App:

   ```bash
   ./main
   ```

## Outputs

BET on T1, T2, FLAIR or BOLD (`2.0`):

```text
out/    copy of the input directory with the image replaced by the brain-extracted image
mask/
└── mask.nii.gz   binary brain mask
```

BET on DWI (`dwi`): `dwi/dwi.nii.gz` (every DWI volume multiplied by the mask), `dwi/dwi.bvals` and `dwi/dwi.bvecs` (copied unchanged), and `mask/mask.nii.gz`. The mask is estimated with BET on the mean of the b=0 volumes.

Apply mask (`apply-mask-v1.0`): `output/`, a copy of the input directory with the image multiplied by the mask (`fslmaths -mas`).

## Troubleshooting

- **Too much or too little brain removed**: inspect the mask and adjust `fthreshold` (0 to 1; smaller values give larger brain outline estimates). For DWI, `gthreshold` (−1 to 1) shifts the outline: positive values give a larger outline at the bottom and a smaller one at the top.
- **`mask missing`** (DWI): BET did not produce a mask. Check the log for `bet` errors and that the DWI contains b=0 volumes, which are averaged to estimate the mask.
- **Apply mask**: the mask must be in the same space and voxel grid as the image.

## Citing

> [!TIP]
> If you use this App in your work, please cite the App, the software it builds on and brainlife.io (below). GitHub's **Cite this repository** button gives the App citation in APA and BibTeX.

- Apply mask to extract brain data - DWI. brainlife.io App. [doi:10.25663/brainlife.app.755](https://doi.org/10.25663/brainlife.app.755)
- Apply mask to extract brain data - BOLD. brainlife.io App. [doi:10.25663/brainlife.app.754](https://doi.org/10.25663/brainlife.app.754)
- Apply mask to extract brain data - FLAIR. brainlife.io App. [doi:10.25663/brainlife.app.753](https://doi.org/10.25663/brainlife.app.753)
- Apply mask to extract brain data - T2. brainlife.io App. [doi:10.25663/brainlife.app.752](https://doi.org/10.25663/brainlife.app.752)
- Apply mask to extract brain data - T1. brainlife.io App. [doi:10.25663/brainlife.app.751](https://doi.org/10.25663/brainlife.app.751)
- Jenkinson et al. FSL. *NeuroImage* 62:782-790 (2012). [doi:10.1016/j.neuroimage.2011.09.015](https://doi.org/10.1016/j.neuroimage.2011.09.015)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Brad Caron
- Lindsey Kitchell
- Franco Pestilli (project director)

**Contributors:** Soichi Hayashi, Anibal Sólon

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io is publicly funded, and acknowledging that support helps keep it running. This App was developed with support from Wellcome, the U.S. National Institutes of Health (including the BRAIN Initiative BRAIN CONNECTS program: The Axonal Projectome EXchange, U24NS140384, and the Center for Mesoscale Connectomics, UM1NS132207) and the U.S. National Science Foundation.</sub>

## License

[MIT](https://github.com/brainlife/app-FSLBET/blob/master/LICENSE). FSL itself is distributed under its own [license](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Licence).
