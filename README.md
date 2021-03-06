# Course notes for [fast.ai 2019](https://course-v3.fast.ai/)

## Setup

- Lenovo ThinkPad X1 Extreme
- Install Visual Studio 2017 with following workloads
  - .NET Desktop
  - Data science and analytical applications
  - Python
- git clone https://github.com/parthopdas/c-fastai2019

### Win10 Setup

> Setup fastai course v3 using any of the methods:
> 1. Anaconda (default)
> 2. PIP (in case anaconda doesnt work out for some reason)
> 3. git linked (when you want to debug or contribute to fastai library)
>
>
> For all 3 approaches ensure these steps are performed first
> - conda deactivate
> - conda env remove --name my-fastai2019
> - conda create --name my-fastai2019 python=3.7.2
> - conda activate my-fastai2019
>

#### Anaconda (default)

- conda install -c pytorch -c fastai -c conda-forge fastai pytorch torchvision cuda100
- tools\verify-CUDA.ps1
- conda install jupyter

#### PIP (alternative)

> In case of build errors with pip installation, follow:
> - https://github.com/statsmodels/statsmodels/issues/4160
> - https://stackoverflow.com/questions/43847542/rc-exe-no-longer-found-in-vs-2015-command-prompt/45319119#45319119

- pip install fastai
- tools\verify-CUDA.ps1

#### git linked (for debugging fastai libraries)

- conda install -c pytorch fastai pytorch torchvision cuda100
- conda install jupyter
- tools\verify-CUDA.ps1
- git clone https://github.com/fastai/fastai
- cd fastai
- ./tools/run-after-git-clone
- pip install -e ".[dev]"

##### Debugging fastai libraries

- Start VS2017 from conda environment
- Create new Python project
- Add fastai code to the python file
- Set breakpoint and F5, F10, F11

## Tools

- [hyperlayout](https://github.com/timolins/hyperlayout) default
- .\tools\monitor-cpu.ps1
- .\tools\monitor-gpu.ps1
- [Kaggle CLI](https://github.com/Kaggle/kaggle-api)

## Tips & tricks 

- Faster experimentation
  - Transfer learning
  - [TODO] Google image downloader
  - Use the fastai samples/tiny datasets
  - Train with images with reduced sizes
  - [Faster experimentation](http://forums.fast.ai/t/faster-experimentation-for-better-learning/7881)
- For creating new datasets: Download images from google search [TODO: ImageDownloader tool]
- Switch between CPU & GPU
    ``` python
    defaults.device = torch.device('cpu') 
    defaults.device = torch.device('cuda')
    ```
- Fixing GPU OOM
  - Reduce batch size
  - Reduce image size
  - Use a simpler architecture   
  - Mixed precision training (doing the training using half precision fp)
- Ways to get more data
  - Supervised learning: Manually label data
  - Data augmentation
  - NLP: Entire test and train sets to fine tune language model
- Ways to prevent underfit?
  - Decrease regularization
  - 
- Ways to prevent overfit??
  - Increase regularization
  - 
- Ways to speed up training?
  - Use transfer learning

## Jeremy's thumb rules

- Will 'x' work? Try it and see!
- Getting a feel for the data aqap:
  - Use the fastai samples/tiny datasets
  - Initially train with images with reduced sizes
- How to pick the learning rate? 10x smaller then right before loss shoots up.
- Train on GPU, predict on CPU.

## Useful links

- [Course material](https://course-v3.fast.ai)
- [Course transcripts](https://github.com/hiromis/notes)
- [Course notes](https://forums.fast.ai/t/deep-learning-lesson-1-notes/27748)

## Insights

- Skill in training models is honing the intuition of driving across the loss function landscape to find the lowest & flattest spot as quickly as possible.
  - Lowest => Best fit across seen data sets
  - Flattest => Generalizes the best across unseen data sets
- With DL there is still feature engineering, but the features are encoded in the activations in various layers and automagically figured out by the network during training

## TODO

- verify-CUDA 
  - Add fai verification
  - rename to verify-FAI
- looking at the results section for each kata
  - make a single prediction using CPU
- official instruction for win10
- Kaggle winners interviews