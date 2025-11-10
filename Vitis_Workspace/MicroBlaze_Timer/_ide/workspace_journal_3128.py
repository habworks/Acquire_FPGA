# 2025-07-15T06:58:46.039490800
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_Timer")

platform = client.create_platform_component(name = "MB_Timer_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_Timer/Block_Diagram_Timer_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_Timer_App",platform = "$COMPONENT_LOCATION/../MB_Timer_Platform/export/MB_Timer_Platform/MB_Timer_Platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="MB_Timer_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["main.c", "Timer_PWM_Support.c"], dest_dir_in_cmp = "src")

status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["Timer_PWM_Support.h"], dest_dir_in_cmp = "Inc")

platform = client.get_component(name="MB_Timer_Platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="MB_Timer_App")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="MB_Timer_Platform")

platform = client.create_platform_component(name = "MB_Timer_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_Timer/Block_Diagram_Timer_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_Timer_App")

comp = client.create_app_component(name="MB_Timer_App",platform = "$COMPONENT_LOCATION/../MB_Timer_Platform/export/MB_Timer_Platform/MB_Timer_Platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="MB_Timer_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["Timer_PWM_Support.h", "Timer_PWM_Support.c", "main.c"], dest_dir_in_cmp = "src")

status = platform.build()

status = platform.build()

comp = client.get_component(name="MB_Timer_App")
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

