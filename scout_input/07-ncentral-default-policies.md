# Default Automation Policies in N-central

**Source:** https://documentation.n-able.com/N-central/userguide/Content/Automation/AutoMgr_DefaultPolicies.htm  
**Retrieved:** 2026-06-02  
**Confidence:** [CS: VERIFIED] — Official product documentation

## 13 Categories of Default Automation Policies

N-central includes default automation policies that users can clone and customize:

### Infrastructure Management
Cisco router configuration, Hyper-V virtual machine operations, DNS server management, and Windows service control automation.

### System Maintenance
Disk cleanup, defragmentation, event log backups, temporary file deletion, and Windows update folder management—addressing routine housekeeping tasks.

### Diagnostics & Monitoring
Registry queries, process analysis, UAC status checks, DHCP renewal, and public IP detection to identify system conditions.

### File Operations
Compression, decompression, searching, moving, copying, and deletion of files and folders with metadata tracking.

### User & Identity Management
Active Directory operations including account unlocking, password resets, mailbox administration, and Office 365 user provisioning.

### Troubleshooting
DNS resolution testing, Outlook connection error resolution, firewall configuration, and WMI resync procedures.

## Key Pattern

Policies follow a **permissive-then-customize model:**

"You cannot directly modify a default policy" but users can "Clone" them to create editable versions.

This design protects baseline functionality while enabling customization for specific organizational needs. [CS: VERIFIED]

The breadth across 13 domains suggests N-central targets comprehensive IT operations automation rather than specialized functions.

---

**Note:** These policies are rule-based workflows, not AI-driven. They represent what N-central can already automate without N-zo.
