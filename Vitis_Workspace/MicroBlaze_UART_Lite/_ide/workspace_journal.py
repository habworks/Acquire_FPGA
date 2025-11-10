# 2025-08-24T07:48:09.060362400
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_UART_Lite")

comp = client.get_component(name="MB_UART_L_App")
status = comp.clean()

status = comp.clean()

platform = client.get_component(name="MB_UART_L_Platform")
status = platform.build()

comp.build()

vitis.dispose()

