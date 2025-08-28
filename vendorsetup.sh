#!/bin/bash

APK_PATH="vendor/google/camera/proprietary/product/priv-app/GoogleCamera/GoogleCamera.apk"

if [ -f "$APK_PATH" ]; then
    echo "✅ GoogleCamera.apk already exists at $APK_PATH, skipping download."
else
    echo "📥 Downloading the latest GoogleCamera.apk ..."
    curl -L \
      --user-agent 'Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101 Firefox/95.0' \
      --output "$APK_PATH" \
      "https://d.apkpure.net/b/APK/com.google.android.GoogleCamera?version=latest"

    if [ -f "$APK_PATH" ]; then
        echo "✅ Download completed: $APK_PATH"
    else
        echo "❌ Download failed!"
    fi
fi
