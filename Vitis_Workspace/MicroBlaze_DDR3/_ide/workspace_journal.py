# 2025-10-27T13:08:42.818233800
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_DDR3")

vitis.dispose()

