# 2025-06-22T12:09:09.137864100
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_IO")

platform = client.get_component(name="MB_IO_Platform")
status = platform.build()

comp = client.get_component(name="MB_IO_App")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

