# 2025-06-17T19:42:34.061317900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_IO")

vitis.dispose()

