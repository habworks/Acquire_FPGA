# 2025-11-08T05:49:15.893135600
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_LCD")

platform = client.create_platform_component(name = "MB_LCD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_LCD/Block_Diagram_LCD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_LCD_App",platform = "$COMPONENT_LOCATION/../MB_LCD_Platform/export/MB_LCD_Platform/MB_LCD_Platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="MB_LCD_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads\MB_LCD_App\src", files=["main.c", "AXI_IRQ_Controller_Support.c", "AXI_Timer_PWM_Support.c", "AXI_UART_Lite_Support.c", "AXI_IRQ_Controller_Support.h", "AXI_Timer_PWM_Support.h", "AXI_UART_Lite_Support.h"], dest_dir_in_cmp = "src")

platform = client.get_component(name="MB_LCD_Platform")
status = platform.build()

comp = client.get_component(name="MB_LCD_App")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_LCD_Platform")

platform = client.create_platform_component(name = "MB_LCD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_LCD/Block_Diagram_LCD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

