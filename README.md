# StableAnimator

<a href='https://francis-rings.github.io/StableAnimator'><img src='https://img.shields.io/badge/Project-Page-Green'></a> <a href='https://arxiv.org/abs/2411.17697'><img src='https://img.shields.io/badge/Paper-Arxiv-red'></a> <a href='https://huggingface.co/FrancisRing/StableAnimator/tree/main'><img src='https://img.shields.io/badge/HuggingFace-Model-orange'></a> <a href='https://www.youtube.com/watch?v=7fwFyFDzQgg'><img src='https://img.shields.io/badge/YouTube-Watch-red?style=flat-square&logo=youtube'></a> <a href='https://www.bilibili.com/video/BV1X5zyYUEuD'><img src='https://img.shields.io/badge/Bilibili-Watch-blue?style=flat-square&logo=bilibili'></a>


## Installation / Basic usage guide


### Download weights
If you encounter connection issues with Hugging Face, you can utilize the mirror endpoint by setting the environment variable: `export HF_ENDPOINT=https://hf-mirror.com`.
Please download weights manually as follows:
```
cd StableAnimator
git lfs install
git clone https://huggingface.co/FrancisRing/StableAnimator checkpoints
```
All the weights should be organized in checkpoints as follows
```
StableAnimator/
├── checkpoints
│   ├── DWPose
│   │   ├── dw-ll_ucoco_384.onnx
│   │   └── yolox_l.onnx
│   ├── Animation
│   │   ├── pose_net.pth
│   │   ├── face_encoder.pth
│   │   └── unet.pth
│   ├── SVD
│   │   ├── feature_extractor
│   │   ├── image_encoder
│   │   ├── scheduler
│   │   ├── unet
│   │   ├── vae
│   │   ├── model_index.json
│   │   ├── svd_xt.safetensors
│   │   └── svd_xt_image_decoder.safetensors
│   ├── models
│   │   └── antelopev2
│   │       ├── 1k3d68.onnx
│   │       ├── 2d106det.onnx
│   │       ├── genderage.onnx
│   │       ├── glintr100.onnx
│   │       └── scrfd_10g_bnkps.onnx


## Setup assets for inference

Step 1: Extract frames from target video
If you only have the target MP4 file (target.mp4), we recommend you to use `ffmpeg` to convert the MP4 file to multiple frames (.png files) without any quality loss.
```
ffmpeg -i target.mp4 -q:v 1 -start_number 0 target_images/frame_%d.png
```

Step 2: Generate the human skeleton images
```
python DWPose/skeleton_extraction.py --target_image_folder_path="inference/animation1/target_images" --ref_image_path="inference/animation1/reference.png" --poses_folder_path="inference/animation1/poses"
```
## Contact
If you have any suggestions or find our work helpful, feel free to contact the author

Email: francisshuyuan@gmail.com

If you find our work useful, <b>please consider giving a star to the ORIGINAL github repository and citing it</b>:
```bib
@article{tu2024stableanimator,
  title={StableAnimator: High-Quality Identity-Preserving Human Image Animation},
  author={Shuyuan Tu and Zhen Xing and Xintong Han and Zhi-Qi Cheng and Qi Dai and Chong Luo and Zuxuan Wu},
  journal={arXiv preprint arXiv:2411.17697},
  year={2024}
}
```
