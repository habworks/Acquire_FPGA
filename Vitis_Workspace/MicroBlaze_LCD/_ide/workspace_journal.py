# 2025-11-11T05:40:29.064321100
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_LCD")

comp = client.get_component(name="MB_LCD_App")
status = comp.clean()

platform = client.get_component(name="MB_LCD_Platform")
status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_LCD_Platform")

platform = client.create_platform_component(name = "MB_LCD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_LCD/Block_Diagram_LCD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

comp.build()

