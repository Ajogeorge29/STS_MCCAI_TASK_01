#!/bin/bash
set -e

echo "[INFO] Starting prediction..."

# Run inference
python3 run_inference.py --input /workspace/inputs --output /workspace/outputs

echo "[INFO] Inference finished. Renaming outputs..."

cd /workspace/outputs
for f in *.nii.gz; do
    base=$(basename "$f" .nii.gz)
    # Only add _Mask if not already present
    if [[ "$base" != *_Mask ]]; then
        mv "$f" "${base}_Mask.nii.gz"
    fi
done

echo "[INFO] Outputs ready:"
ls -lh /workspace/outputs
