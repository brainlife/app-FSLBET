[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.163-blue.svg)](https://doi.org/10.25663/brainlife.app.163)

# app-FSLBET
Brain Extraction via FSL's BET command on DWI volume

Write the following here...

1) What the App does, and how it does it at the basic level.
2) Briefly explain what 1) means for novice users in a language that 1st year psychology student can understand it.
3) Briefly description of input / output files.

This App runs pulls out b0 volume from an input dwi image (mean it), then use it to run bet to generate brain extracted DWI image. It then apply the mask on all dwi volumes and output it. 



### Authors
- [Bradley Caron](bacaron@iu.edu)
- Lindsey Kitchell

### Contributors
- [Franco Pestilli](frakkopesto@gmail.com)

### Funding Acknowledgement
brainlife.io is publicly funded and for the sustainability of the project it is helpful to Acknowledge the use of the platform. We kindly ask that you acknowledge the funding below in your publications and code reusing this code.

[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-ACI-1916518](https://img.shields.io/badge/NSF_ACI-1916518-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1916518)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://grantome.com/grant/NIH/R01-EB029272-01)

### Citations
We kindly ask that you cite the following articles when publishing papers and code using this code. 

1. Avesani, P., McPherson, B., Hayashi, S. et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). [https://doi.org/10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

#### MIT Copyright (c) 2020 brainlife.io The University of Texas at Austin and Indiana University


## Running the App 

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/bl.app.163](https://doi.org/10.25663/bl.app.163) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
    "dwi": "input/dwi/dwi.nii.gz",
    "bvecs": "input/dwi/dwi.bvecs",
    "bvals": "input/dwi/dwi.bvals",
    "fthreshold": 0.4,
    "gthreshold": 0
}
```

3. Launch the App by executing `main`

```bash
./main
```

### Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brain-life/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download 5d796fd303e8c96171eaed52 && mv 5d796fd303e8c96171eaed52 input/dwi
```

## Output

The masked dwi image will be generated in `.dwi/` directory. The mask file will be stored at `./mask/mask.nii.gz`.

### Dependencies

This App only requires [singularity](https://www.sylabs.io/singularity/) to run. If you don't have singularity, you will need to install following dependencies.  

  - Matlab: https://www.mathworks.com/products/matlab.html
  - jsonlab: https://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab-a-toolbox-to-encode-decode-json-files
  - VISTASOFT: https://github.com/vistalab/vistasoft/
  - ENCODE: https://github.com/brain-life/encode
  - MBA: https://github.com/francopestilli/mba

#### MIT Copyright (c) 2020 brainlife.io The University of Texas at Austin and Indiana University
