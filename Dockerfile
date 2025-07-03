FROM frappe/erpnext:version-14

# Copy the start script and ensure it has proper Unix line endings
COPY start.sh /start.sh
RUN tr -d '\r' < /start.sh > /start.sh.tmp && mv /start.sh.tmp /start.sh && chmod +x /start.sh

CMD ["/start.sh"]