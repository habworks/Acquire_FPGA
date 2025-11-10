# 2025-10-17T06:45:08.869027900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

platform = client.get_component(name="MB_ADC_Platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="MB_ADC_App")
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

comp = client.get_component(name="MB_ADC_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["AXI_IMR_ADC_7476A_DUAL.h", "AXI_IMR_ADC_7476A_DUAL.c"], dest_dir_in_cmp = "src")

comp = client.get_component(name="MB_ADC_App")
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

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

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

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

