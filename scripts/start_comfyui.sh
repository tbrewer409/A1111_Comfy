#!/usr/bin/env bash
echo "ComfyUI: Starting ComfyUI"
cd /workspace/ComfyUI
export PYTHONUNBUFFERED=1
source /venv_comfyui/bin/activate
nohup python3 main.py --listen 0.0.0.0 --port 7860 --extra-model-paths-config extra_model_paths.yaml --cuda-malloc --fp16-unet --fp16-vae --force-channels-last > /workspace/logs/comfyui.log 2>&1 &
deactivate
echo "ComfyUI: Started on port 7860"
echo "ComfyUI: Log file: /workspace/logs/comfyui.log"
