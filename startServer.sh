#!/bin/sh


INSTALL_DIR=/opt/simplehelp/SimpleHelp
#INSTALL_DIR=/home/baophan/SimpleHelp/SimpleHelp/

echo "Install is $INSTALL_DIR"
$INSTALL_DIR/jre1.6.0_16/bin/java -Xmx384m -Djava.net.preferIPv4Stack=true -cp "$INSTALL_DIR/lib/secure_shelp.jar:$INSTALL_DIR/lib/secure_utils.jar:$INSTALL_DIR/lib/secure_nlink.jar:$INSTALL_DIR/lib/mail.jar:$INSTALL_DIR/lib/activation.jar" -Djava.awt.headless=true SecureRunner1 com.aem.shelp.proxy.ProxyServerStartup 
