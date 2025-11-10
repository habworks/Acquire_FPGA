# 2025-08-24T08:23:20.362860200
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_app_component(name="MB_ADC_App",platform = "$COMPONENT_LOCATION/../MB_ADC_Platform/export/MB_ADC_Platform/MB_ADC_Platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="MB_ADC_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads\Temp", files=["main.c", "AXI_IRQ_Controller_Support.c", "AXI_Timer_PWM_Support.c", "AXI_UART_Lite_Support.c", "AXI_IRQ_Controller_Support.h", "AXI_Timer_PWM_Support.h", "AXI_UART_Lite_Support.h"], dest_dir_in_cmp = "src")

platform = client.get_component(name="MB_ADC_Platform")
status = platform.build()

comp = client.get_component(name="MB_ADC_App")
comp.build()

status = comp.clean()

status = platform.build()

client.delete_component(name="MB_ADC_Platform")

platform = client.create_platform_component(name = "MB_ADC_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado_Workspace/Acquire_ADC/Block_Diagram_ADC_wrapper.xsa")

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

