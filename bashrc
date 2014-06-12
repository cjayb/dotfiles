if [ -t 0 ]; then
	source .bash-colors.sh
	source .git-prompt.sh
	export PS1="\[$Green\][\w]\[$Purple\]\$(__git_ps1)\n\[$BCyan\]\u@\[$BYellow\]\h\[\033[1;33m\] \[$White\]\$ \[$Color_Off\]"
fi

# These are needed for spyder to work
# See also: https://groups.google.com/forum/?fromgroups=#!topic/spyderlib/KZ4RxuZ3snc
export LANG=en_US.UTF-8 
export LC_ALL=en_US.UTF-8 


alias ll='ls -l -color'
alias la='ls -la -color'
alias vim='mvim -v'

alias wget_dir='wget -nH -r --level=1 -k -p'

export PATH=$HOME/bin:$PATH

export MATLABDIR=/Applications/MATLAB_2011a

#export PATH=$PATH:/usr/texbin:/opt/local/bin:/usr/local/mni/bin
#QTDIR=/opt/local/lib/qt3; export QTDIR

export PATH=$PATH:/Users/cjb/Scripts/cbstat

#MNI tools in path
export PATH=$PATH:/usr/local/mni/bin

# MNE Configuration
export MNE_ROOT=/Applications/MNE-2.7.4-3420
export MATLAB_ROOT=/Applications/MATLAB_R2011a.app
. $MNE_ROOT/bin/mne_setup_sh

# FreeSurfer configuration
export FREESURFER_HOME=/Applications/freesurfer
export SUBJECTS_DIR=~/template_data/MNE-sample-data/subjects
. $FREESURFER_HOME/SetUpFreeSurfer.sh

# mne-python
export MNE_PYTHON_ROOT=~/src/git/mne-python
export PATH=$MNE_PYTHON_ROOT/bin:$PATH
export MNE_DATASETS_SAMPLE_PATH=~/template_data

# FSL Configuration
#FSLDIR=/usr/local/fsl
#PATH=${FSLDIR}/bin:${PATH}
#. ${FSLDIR}/etc/fslconf/fsl.sh
#export FSLDIR PATH

# ImageMagick
# export PATH=$PATH:/opt/ImageMagick-6.6.9/bin
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/ImageMagick-6.6.9/lib

MKL_NUM_THREADS=2
OMP_NUM_THREADS=$MKL_NUM_THREADS
export MKL_NUM_THREADS
export OMP_NUM_THREADS

# Setting PATH for EPD-7.3-2
# The orginal version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
#export PATH
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi
# Added by Canopy installer on 2013-06-20
# VIRTUAL_ENV_DISABLE_PROMPT can be '' to make bashprompt show that Canopy is active, otherwise 1
#VIRTUAL_ENV_DISABLE_PROMPT=1 
#export PATH=/Users/cjb/Library/Enthought/Canopy_64bit/User/bin:${PATH}
#source activate

export PATH=/Users/cjb/anaconda/bin:$PATH
export PATH=/Users/cjb/.local/bin:$PATH
