FROM frappe/erpnext:version-14

# Copy the start script to a writable location
COPY start.sh /tmp/start.sh

CMD ["/tmp/start.sh"]