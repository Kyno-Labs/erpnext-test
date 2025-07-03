FROM frappe/erpnext:version-14

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]