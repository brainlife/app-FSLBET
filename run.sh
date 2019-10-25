#!/bin/bash

mkdir mask
mkdir dwi

export dwi=$(jq -r .dwi config.json)
export bvals=$(jq -r .bvals config.json)
export bvecs=$(jq -r .bvecs config.json)
export fthresh=$(jq -r .fthreshold config.json)
export gthresh=$(jq -r .gthreshold config.json)

cp ${dwi} dwi_original.nii.gz;
cp ${bvals} ./dwi/dwi.bvals;
cp ${bvecs} ./dwi/dwi.bvecs;

select_dwi_vols \
    dwi_original.nii.gz \
    ${bvals} \
    nodif.nii.gz \
    0;
    
fslmaths nodif \
    -Tmean \
    nodif_mean;

# Brain extraction before alignment
bet nodif_mean.nii.gz \
    dwi_brain \
    -f $fthresh \
    -g $gthresh \
    -m;
    
# multiply dwi by mask to get extracted brain
fslmaths dwi_original.nii.gz -mul dwi_brain_mask.nii.gz ./dwi/dwi.nii.gz;

mv dwi_brain_mask.nii.gz ./mask/mask.nii.gz;
rm -rf nodif.nii.gz nodif_mean.nii.gz dwi_original.nii.gz dwi_brain.nii.gz

