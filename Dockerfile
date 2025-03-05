FROM quay.io/zroubalik/kafka-app:latest

# Switch to root user
USER root

# Add the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Revert to the original non-root user (if required by the image)
USER 1001

# Set default command
CMD ["/usr/local/bin/entrypoint.sh"]
