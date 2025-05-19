# Custom Bash Scripts

A set of handy scripts for automating daily tasks on systems

## Scripts

- [log_arghive.sh](#Log-Archive)
- [server_status.sh](#Server-Status)
- [nginx_log_analyser.sh](#nginx-log-analyser)

## Log Archive
<p>log_archive.sh is a script that allows you to compress log desired log directory into a zip file. This is great for cleanup and reducing space on your server.</p>

### Usage
- 1: sh ./log_archive.sh (arg 1)
- 2: arg 1 will be the name of the directory you want to use this tool on.
- 3: Example. sh ./log_archive.sh /var/log/ufw_logs

## Server Status
<p>server_status.sh is a tool used to quickly pull up important server stats</p>

### Server stats included in output
- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## Nginx Log Analyser
<p>Nginx_log_analyser.sh is a tool for parsing through your webservers logs to see important stats.</p>

### Log stats included in output
- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents
