# 2025-07-17T06:24:50.514819500
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_Timer")

vitis.dispose()

