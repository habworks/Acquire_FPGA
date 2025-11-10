# 2025-08-24T14:01:53.409286700
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

platform = client.get_component(name="MB_ADC_Platform")
status = platform.build()

comp = client.get_component(name="MB_ADC_App")
comp.build()

vitis.dispose()

