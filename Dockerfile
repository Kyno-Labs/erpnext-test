FROM frappe/erpnext:version-14

# Copy the start script and ensure it has proper Unix line endings
COPY start.sh /start.sh
RUN sed -i 's/\r$//' /start.sh && chmod +x /start.sh

CMD ["/start.sh"]