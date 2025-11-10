# 2025-10-25T10:28:59.743030900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

comp = client.get_component(name="MB_ADC_App")
status = comp.clean()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

platform = client.get_component(name="MB_ADC_Platform")
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

comp.build()

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

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

vitis.dispose()

