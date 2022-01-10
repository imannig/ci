#! /bin/bash


git fetch https://source.codeaurora.org/quic/la/kernel/msm-4.14/ $1
git merge FETCH_HEAD -m "treewide: merge $1"
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $1
git merge -X subtree=drivers/staging/qcacld-3.0 FETCH_HEAD -m "qcacld: merge $1"
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api $1
git merge -X subtree=drivers/staging/fw-api FETCH_HEAD -m "fw-api: merge $1"
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $1
git merge -X subtree=drivers/staging/qca-wifi-host-cmn FETCH_HEAD -m "qca-wifi-host-cmn: merge $1"
git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel $1
git merge -X subtree=techpack/audio FETCH_HEAD -m "techpack/audio: merge $1"
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/data-kernel $1
git merge -X subtree=techpack/data FETCH_HEAD -m "techpack/data: merge $1"
