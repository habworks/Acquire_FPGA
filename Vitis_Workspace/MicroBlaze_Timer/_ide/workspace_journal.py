# 2025-07-23T13:51:11.737699200
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_Timer")

vitis.dispose()

