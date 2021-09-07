#!/bin/bash

mkdir mask
mkdir dwi

export dwi=$(jq -r .dwi config.json)
export bvals=$(jq -r .bvals config.json)
export bvecs=$(jq -r .bvecs config.json)
export fthresh=$(jq -r .fthreshold config.json)
export gthresh=$(jq -r .gthreshold config.json)
robust=`jq -r '.robust' config.json`

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

# Brain extraction
if [[ ${robust} == true ]]; then
    r_line='-R '
else
    r_lin=' '
fi
bet nodif_mean.nii.gz \
    dwi_brain \
    ${r_line}\
    -f $fthresh \
    -g $gthresh \
    -m;
    
mv dwi_brain.nii.gz ./dwi/dwi.nii.gz
mv dwi_brain_mask.nii.gz ./mask/mask.nii.gz;
rm -rf nodif.nii.gz nodif_mean.nii.gz dwi_original.nii.gz dwi_brain.nii.gz

if [ ! -f ./mask/mask.nii.gz ]; then
	echo "mask missing"
	exit 1
else
	echo "mask complete"
fi
