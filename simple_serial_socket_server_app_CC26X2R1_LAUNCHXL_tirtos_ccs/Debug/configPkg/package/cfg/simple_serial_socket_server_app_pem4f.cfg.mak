# invoke SourceDir generated makefile for simple_serial_socket_server_app.pem4f
simple_serial_socket_server_app.pem4f: .libraries,simple_serial_socket_server_app.pem4f
.libraries,simple_serial_socket_server_app.pem4f: package/cfg/simple_serial_socket_server_app_pem4f.xdl
	$(MAKE) -f C:\Users\User\workspace_v10\simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\User\workspace_v10\simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs clean

