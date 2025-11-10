# 2025-10-20T05:30:18.483109900
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_ADC")

comp = client.get_component(name="MB_ADC_App")
status = comp.clean()

status = comp.clean()

status = comp.clean()

platform = client.get_component(name="MB_ADC_Platform")
status = platform.build()

comp.build()

status = comp.clean()

vitis.dispose()

vitis.dispose()

