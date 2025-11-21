nnUNet for Semi-supervised Tooth and Pulp
Root Canal Segmentation in CBCT
Ajo Babu George1[0009−0005−3026−0959] and Sadhvik
Bathini2[0009−0007−1011−3761]
1 DiceMed, Odisha, India.
2 Indian Institute of Technology Kharagpur, West Bengal, India
drajo_george@dicemed.in, sadhvik.ini@gmail.com



Abstract. This paper presents a solution for the Semi-supervised Teeth
Segmentation and Registration (STSR) 2025 Challenge, which focused
on the precise segmentation of teeth and pulp root canals in 3D Cone
Beam Computed Tomography (CBCT) scans. Accurate segmentation of
the pulp root canal is crucial for clinical visualization and treatment
planning, but manual annotation is extremely labor-intensive. The pre-
sented approach uses a semi-supervised framework powered by nnU-Net,
leveraging a small labeled dataset of 30 scans alongside a much larger
unlabeled dataset of 300 scans. To effectively utilize the unlabeled data,
pseudo-labeling was employed to generate annotations, and the model
was subsequently trained. The results for both tooth and pulp struc-
tures yield a Dice score of 0.8088 and an mIoU of 0.9638 in the all-data
track, while the Dice score in the coreset track is 0.69. These metrics
highlight the model’s ability to accurately identify and delineate the tar-
get structures.
Keywords: Teeth Segmentation · Semi-supervised learning · nnUNet ·
CBCT · Pulp · Root canals
