FROM frappe/erpnext:version-14

# Copy the start script to a writable location
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]