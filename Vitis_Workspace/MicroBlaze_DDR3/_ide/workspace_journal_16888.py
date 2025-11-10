# 2025-07-29T13:23:03.836972500
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_DDR3")

platform = client.create_platform_component(name = "MB_DDR3_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_DDR3/Block_Diagram_DDR3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_DDR3_App",platform = "$COMPONENT_LOCATION/../MB_DDR3_Platform/export/MB_DDR3_Platform/MB_DDR3_Platform.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="MB_DDR3_Platform")
status = platform.build()

comp = client.get_component(name="MB_DDR3_App")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../MicroBlaze_UART_Lite/MB_UART_L_App/src", files=["AXI_IRQ_Controller_Support.c", "AXI_IRQ_Controller_Support.h", "AXI_Timer_PWM_Support.c", "AXI_Timer_PWM_Support.h", "AXI_UART_Lite_Support.c", "AXI_UART_Lite_Support.h", "main.c"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="MB_DDR3_App")
comp.build()

status = comp.clean()

client.delete_component(name="MB_DDR3_Platform")

platform = client.create_platform_component(name = "MB_DDR3_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_DDR3/Block_Diagram_DDR3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_DDR3_Platform")

platform = client.create_platform_component(name = "MB_DDR3_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_DDR3/Block_Diagram_DDR3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

