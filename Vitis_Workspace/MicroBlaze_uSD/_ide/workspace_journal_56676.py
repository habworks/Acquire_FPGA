# 2025-10-30T06:20:37.047562700
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_uSD")

platform = client.create_platform_component(name = "MB_uSD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_uSD/Block_Diagram_uSD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_uSD_App",platform = "$COMPONENT_LOCATION/../MB_uSD_Platform/export/MB_uSD_Platform/MB_uSD_Platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="MB_uSD_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads\Temp", files=["main.c", "AXI_IRQ_Controller_Support.c", "AXI_Timer_PWM_Support.c", "AXI_UART_Lite_Support.c", "AXI_IRQ_Controller_Support.h", "AXI_Timer_PWM_Support.h", "AXI_UART_Lite_Support.h"], dest_dir_in_cmp = "src")

status = comp.import_files(from_loc="C:\Users\habco\Downloads\Temp\xilffs_Hab\src", files=["diskio.c", "ff.c", "ffsystem.c", "ffunicode.c"], dest_dir_in_cmp = "src")

status = comp.import_files(from_loc="C:\Users\habco\Downloads\Temp\xilffs_Hab\src\include", files=["diskio.h", "ffconf.h", "xilffs_config.h", "ff.h"], dest_dir_in_cmp = "src")

platform = client.get_component(name="MB_uSD_Platform")
status = platform.build()

comp = client.get_component(name="MB_uSD_App")
comp.build()

comp = client.get_component(name="MB_uSD_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads\Temp\xilffs_Hab\src\include", files=["xilffs.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="MB_uSD_App")
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

status = comp.clean()

client.delete_component(name="MB_uSD_Platform")

platform = client.create_platform_component(name = "MB_uSD_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_uSD/Block_Diagram_uSD_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

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

vitis.dispose()

