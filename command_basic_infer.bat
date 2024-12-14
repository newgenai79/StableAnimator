set CUDA_VISIBLE_DEVICES=0 
python inference_basic.py ^
 --pretrained_model_name_or_path="./checkpoints/stable-video-diffusion-img2vid-xt" ^
 --output_dir="./basic_infer" ^
 --validation_control_folder="./inference/new/poses" ^
 --validation_image="./inference/new/reference.png" ^
 --width=512 ^
 --height=512 ^
 --guidance_scale=3.0 ^
 --num_inference_steps=30 ^
 --posenet_model_name_or_path="./checkpoints/Animation/pose_net.pth" ^
 --face_encoder_model_name_or_path="./checkpoints/Animation/face_encoder.pth" ^
 --unet_model_name_or_path="./checkpoints/Animation/unet.pth" ^
 --tile_size=16 ^
 --overlap=4 ^
 --noise_aug_strength=0.02 ^
 --frames_overlap=4 ^
 --decode_chunk_size=4 ^
 --gradient_checkpointing