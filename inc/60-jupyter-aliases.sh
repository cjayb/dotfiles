clear_notebook () {
    nbname=$1
    jupyter nbconvert --to notebook \
        --ClearOutputPreprocessor.enabled=True --inplace $nbname
}
