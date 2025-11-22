import os
import argparse
import subprocess

def main():
    parser = argparse.ArgumentParser(description="Run nnUNetv2 inference")
    parser.add_argument("--input", type=str, default="/workspace/inputs",
                        help="Path to input directory (mounted by organizers)")
    parser.add_argument("--output", type=str, default="/workspace/outputs",
                        help="Path to output directory (mounted by organizers)")
    args = parser.parse_args()

    input_dir = args.input
    output_dir = args.output

    print(f"[INFO] Found {len([f for f in os.listdir(input_dir) if f.endswith('.nii.gz')])} input files in {input_dir}")
    os.makedirs(output_dir, exist_ok=True)

    # nnUNetv2 predict command
    cmd = [
        "nnUNetv2_predict",
        "-i", input_dir,
        "-o", output_dir,
        "-d", "111",               # dataset ID
        "-c", "3d_fullres",        # configuration
        "-tr", "nnUNetTrainer",    # trainer name
        "-p", "nnUNetPlans",       # plan
        "-f", "0"                  # fold
    ]

    print("[INFO] Running command:", " ".join(cmd))
    try:
        subprocess.run(cmd, check=True)
        print("[INFO] Prediction completed successfully.")
    except subprocess.CalledProcessError as e:
        print("[ERROR] Prediction failed!")
        print(e)

if __name__ == "__main__":
    main()
