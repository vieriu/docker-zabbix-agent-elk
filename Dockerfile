FROM zabbix/zabbix-agent:centos-3.2-latest

RUN mkdir /etc/zabbix/externalscripts
COPY elastizabbix /etc/zabbix/externalscripts
COPY elastizabbix.conf /etc/zabbix/zabbix_agentd.d


EXPOSE 10050/TCP
ENTRYPOINT ["docker-entrypoint.sh"]

