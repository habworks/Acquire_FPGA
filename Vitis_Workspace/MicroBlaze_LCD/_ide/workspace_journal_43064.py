# 2025-11-09T07:21:19.979330600
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_LCD")

platform = client.get_component(name="MB_LCD_Platform")
status = platform.build()

comp = client.get_component(name="MB_LCD_App")
comp.build()

status = platform.build()

status = comp.clean()

client.delete_component(name="MB_LCD_Platform")

platform = client.create_platform_component(name = "MB_LCD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_LCD/Block_Diagram_LCD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

comp.build()

vitis.dispose()

