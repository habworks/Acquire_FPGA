# 2025-10-09T11:37:40.251144800
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

platform = client.get_component(name="MB_ADC_Platform")
status = platform.build()

comp = client.get_component(name="MB_ADC_App")
comp.build()

status = platform.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

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

vitis.dispose()

