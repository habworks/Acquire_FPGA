# 2025-11-11T04:56:08.737493200
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_LCD")

platform = client.get_component(name="MB_LCD_Platform")
status = platform.build()

comp = client.get_component(name="MB_LCD_App")
comp.build()

vitis.dispose()

