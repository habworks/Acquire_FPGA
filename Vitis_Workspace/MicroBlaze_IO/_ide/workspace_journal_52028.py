# 2025-06-17T19:44:35.657052900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_IO")

platform = client.create_platform_component(name = "MB_IO_Platform",hw_design = "$COMPONENT_LOCATION/../../../Acquire_IO/Block_Diagram_IO_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

proj = client.create_sys_project(name="MB_IO_System", platform="$COMPONENT_LOCATION/../MB_IO_Platform/export/MB_IO_Platform/MB_IO_Platform.xpfm", template="empty_accelerated_application")

comp = client.create_app_component(name="MB_IO_App",platform = "$COMPONENT_LOCATION/../MB_IO_Platform/export/MB_IO_Platform/MB_IO_Platform.xpfm",domain = "standalone_microblaze_0")

proj = client.get_sys_project(name="MB_IO_System")

proj = proj.add_component(name="MB_IO_App")

platform = client.get_component(name="MB_IO_Platform")
status = platform.build()

comp = client.get_component(name="MB_IO_App")
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

client.delete_component(name="MB_IO_Platform")

platform = client.create_platform_component(name = "MB_IO_Platform",hw_design = "$COMPONENT_LOCATION/../../../Acquire_IO/Block_Diagram_IO_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

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

status = comp.clean()

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

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

proj = client.get_sys_project(name="MB_IO_System")

status = proj.clean()

status = platform.build()

comp.build()

vitis.dispose()

