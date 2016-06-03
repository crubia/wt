FROM centos
MAINTAINER Jorge Cerpa

WORKDIR /usr/local
ENV JAVA_HOME /usr/java/jdk1.6.0_45/

ADD jdk-6u45-linux-x64-rpm.bin /root

ADD ./mcuWeb.sh /etc/init.d/mcuWeb.sh

RUN /bin/bash -c "yum install wget -y" \
	&& /bin/bash -c "wget http://sourceforge.net/projects/mcumediaserver/files/mcumediaserver/rev%201317/mcuWeb.sar/download" \
	&& mv download mcuWeb.war \
	&& /bin/bash -c "wget http://download.java.net/javaee5/sailfin/v2_branch/promoted/Linux/sailfin-installer-v2-b31g-linux.jar" \
	&& /bin/bash -c "sh /root/jdk-6u45-linux-x64-rpm.bin" \
	&& /bin/bash -c "echo 'java -Xmx256m -jar sailfin-installer-v2-b31g-linux.jar <<!' > instalaSalfin.sh" \
	&& /bin/bash -c "echo A >> instalaSalfin.sh" \
	&& /bin/bash -c "echo ! >> instalaSalfin.sh" \
	&& /bin/bash -c "sh instalaSalfin.sh" \
	&& /bin/bash -c "cd /usr/local/sailfin" \
	&& /bin/bash -c "chmod -R +x /usr/local/sailfin/lib/ant/bin" \
	&& /bin/bash -c "/usr/local/sailfin/lib/ant/bin/ant -f /usr/local/sailfin/setup.xml " \
	&& /bin/bash -c "mv /usr/local/mcuWeb.war /usr/local/sailfin/domains/domain1/autodeploy" \
	&& /bin/bash -c "chmod 777 /etc/init.d/mcuWeb.sh" \
	&& /bin/bash -c "rm *.rpm sailfin-installer-v2-b31g-linux.jar"

EXPOSE 80 8181 4848 3700 3820 3920 8686 5070 5071

CMD /bin/bash -c "/etc/init.d/mcuWeb.sh start && tail -f /usr/local/sailfin/domains/domain1/logs/server.log"