# 2025-07-13T05:45:10.575775800
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_IO")

vitis.dispose()

