#!/bin/bash
# Export predictions from container into tarball

IMAGE_NAME="dicemed"
OUTPUT_DIR="./output"
TAR_NAME="prediction.tar"

# Ensure output dir exists
mkdir -p $OUTPUT_DIR

# Run container, mount input/output, generate predictions
echo "Running inference and collecting predictions..."
docker run --gpus all --rm \
    -v $(pwd)/Validation:/workspace/imagesTs \
    -v $(pwd)/$OUTPUT_DIR:/workspace/predictions \
    $IMAGE_NAME

# Package results into tarball
echo "Packaging predictions into $TAR_NAME ..."
tar -cvf $TAR_NAME -C $OUTPUT_DIR .
echo "Done. Predictions are in $TAR_NAME"
