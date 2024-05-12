# Postmortem: Web Stack Outage - May 10, 2024
<p align="center">
<img src="https://github.com/Nairaalmelegy/alx-system_engineering-devops/blob/master/0x19-postmortem/postmortem.png" width=100% height=100% />
</p>

**Issue Summary:**
- **Duration:** May 10, 2024, 10:00 AM - May 10, 2024, 12:00 PM (UTC)
- **Impact:** The web application experienced intermittent downtime, affecting 30% of users, causing slow response times and occasional errors.
- **Root Cause:** The outage was caused by a misconfiguration in the load balancer settings, leading to uneven distribution of traffic and overloading certain servers.

**Timeline:**
- **10:00 AM:** The issue was detected by automated monitoring alerts, indicating high latency and increased error rates.
- **10:05 AM:** Engineers were notified through the on-call rotation system.
- **10:10 AM:** Initial investigation focused on identifying potential network issues and server overload.
- **10:30 AM:** Misleading assumption suggested database performance issues, leading to unnecessary database optimizations.
- **11:00 AM:** With no improvement, the incident was escalated to the DevOps team for further analysis.
- **11:30 AM:** DevOps team identified misconfigured load balancer settings as the root cause.
- **12:00 PM:** Load balancer settings were corrected, restoring normal traffic distribution and resolving the issue.

**Root Cause and Resolution:**
- **Root Cause:** Misconfigured load balancer settings resulted in uneven traffic distribution, leading to server overload and intermittent downtime.
- **Resolution:** Load balancer settings were adjusted to evenly distribute traffic among servers, mitigating the overload issue and restoring normal operation.

**Corrective and Preventative Measures:**
- **Improvements/Fixes:**
  - Implement automated configuration validation for load balancer settings.
  - Enhance monitoring to detect load balancer misconfigurations in real-time.
- **Tasks:**
  1. Update load balancer configuration to ensure balanced traffic distribution.
  2. Implement automated tests to validate load balancer settings.
  3. Enhance monitoring to alert on load balancer configuration anomalies.
  
**Making People Want to Read Your Postmortem:**
- To make this postmortem more appealing, let's add a touch of humor to lighten the technical discourse. Picture this: our web stack outage as a swashbuckling adventure on the high seas, with our engineers navigating treacherous waters to restore calm to our digital shores. So grab your spyglass and prepare to embark on a journey through the tempestuous seas of system failures and triumphant resolutions!

This postmortem highlights the importance of robust monitoring and rapid response procedures in identifying and resolving system outages. Implementing automated checks and proactive measures will minimize the risk of similar incidents in the future.

