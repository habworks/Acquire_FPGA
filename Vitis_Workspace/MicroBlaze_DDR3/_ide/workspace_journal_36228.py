# 2025-08-28T17:21:27.299094600
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_DDR3")

vitis.dispose()

