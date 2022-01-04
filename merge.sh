#! /bin/bash


git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $1
git merge -X subtree=drivers/staging/qcacld-3.0 FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api $1
git merge -X subtree=drivers/staging/fw-api FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $1
git merge -X subtree=drivers/staging/qca-wifi-host-cmn FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel $1
git merge -X subtree=techpack/audio FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/data-kernel $1
git merge -X subtree=techpack/data FETCH_HEAD
