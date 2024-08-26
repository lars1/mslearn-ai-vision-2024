param([string]$storageAcct)

Copy-Item .\training-images\training_labels_orig.json .\training-images\training_labels.json

(Get-Content training-images/training_labels.json) -replace '<storageAccount>', $storageAcct | Out-File training-images/training_labels.json