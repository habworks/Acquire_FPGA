# 2025-08-07T05:22:00.648741300
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_UART_Lite")

vitis.dispose()

