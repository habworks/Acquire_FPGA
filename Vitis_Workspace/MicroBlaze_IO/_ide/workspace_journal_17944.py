# 2025-06-22T09:16:31.088201500
import vitis

client = vitis.create_client()
client.set_workspace(path="MicroBlaze_IO")

comp = client.get_component(name="MB_IO_App")
status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["GPIO_IO_Support.h"], dest_dir_in_cmp = "inc")

status = comp.import_files(from_loc="C:\Users\habco\Downloads", files=["GPIO_IO_Support.c"], dest_dir_in_cmp = "src")

comp = client.get_component(name="MB_IO_App")
status = comp.clean()

platform = client.get_component(name="MB_IO_Platform")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

