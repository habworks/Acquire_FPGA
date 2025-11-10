# 2025-11-02T08:55:40.634701900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_uSD")

vitis.dispose()

