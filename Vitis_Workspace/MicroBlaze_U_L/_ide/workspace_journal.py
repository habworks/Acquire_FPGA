# 2025-07-27T19:55:40.873695800
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_U_L")

platform = client.create_platform_component(name = "MB_U_L_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_UART_Lite/Block_Diagram_UART_Lite_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_U_L_App",platform = "$COMPONENT_LOCATION/../MB_U_L_Platform/export/MB_U_L_Platform/MB_U_L_Platform.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="MB_U_L_Platform")
status = platform.build()

comp = client.get_component(name="MB_U_L_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["main.c", "UART_Lite_Support.c", "AXI_IRQ_Controller_Support.c", "AXI_IRQ_Controller_Support.h", "Timer_PWM_Support.c", "Timer_PWM_Support.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="MB_U_L_App")
comp.build()

comp = client.get_component(name="MB_U_L_App")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../MicroBlaze_UART_Lite/MB_UART_L_App/src", files=["UART_Lite_Support.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="MB_U_L_App")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="MB_U_L_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["AXI_IRQ_Controller_Support.c", "AXI_IRQ_Controller_Support.h", "AXI_Timer_PWM_Support.c", "AXI_Timer_PWM_Support.h", "AXI_UART_Lite_Support.c", "AXI_UART_Lite_Support.h", "main.c"], dest_dir_in_cmp = "src")

comp = client.get_component(name="MB_U_L_App")
status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

client.delete_component(name="MB_U_L_Platform")

platform = client.create_platform_component(name = "MB_U_L_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_UART_Lite/Block_Diagram_UART_Lite_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

