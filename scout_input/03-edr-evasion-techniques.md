# EDR evasion, tampering, and "killer" techniques

**Source:** Confluence TI space (Nightscope Threat Research), page 61697687601  
**Author:** Brendan Griffin  
**Last Modified:** Mar 25, 2026  
**[CS: VERIFIED]** — Direct export from n-able.atlassian.net

---

| **Method** | **Attacker Complexity** | **Popularity** | **Detection Complexity** |
| --- | --- | --- | --- |
| Process/Service Kill | Low | Medium (Evergreen) | Medium |
| BYO Installer | Low | Low (Rising) | Medium |
| Safe Mode | Medium | Low | Unknown |
| BYO Vulnerable Driver | Medium (getting easier) | High (trendy) | Medium to High |
| Configuration Changes | High (differs per AV) | Unknown | High |
| Traffic Blocking (windows firewall - EDRSilencer) | Medium | Low | High |
| Traffic Blocking (hosts file editing) | Low | Low | Medium? |
| Anti-rootkit tools | Medium | Low | Low |

## Alternative Ideas

* Could we try to detect a lull in EDR comms?
* Many EDRs will be attempting to detect all these things as well, we need to be sure we are forwarding those up at the bare minimum

‌

### Initial suggestions from Product management (Daniel Sylvester)

‌

**Agent health (services, processes, sensor heartbeat)**

* Looking at attempts stop services for EDR, Avs, etc

    * Net stop
    * Sc.exe
    * Reg add
    * Powershell set-******* stuff
    

 

**Install / uninstall / upgrade telemetry**

* Seen exploit on S1 BYOI (bring your own installer)
* Msiexec invoking upgrade then immediately killing process with taskkill when agent is disabled.

    * "msiexec launched" AND "EDR service stopped" AND "no new EDR version/agent check-in within N minutes."
    * Maybe a good Alpha detection or DataScience detection.
    

 

**Policy/tamper protections flipped**

* Local controls being turned off maybe?

    * But this would need logic for EACH EDR.
    
        * E.g. sentinelctl unload -slam -k "passphrase"
        
    
* We should make sure at the very least we are able to forward tampering/disable alerts from the EDRs we integrate with

 

**Driver load & kernel attack surface (BYOVD-focused)**

* Vulnerable dlls loaded to mess up or put agents into a memory dump loop
* Unsigned drivers?
* Side loading or dll injections? But that would mean we need to have a dll injected into the EDR processes… and that would get US detected :D

 

**Privilege anomalies**

* preconditions to most tamper

    * Like new local admins created , membership changes to groups?
    * Hmm. Im sure we have this already to vbe honest.
    

 

**Security tool blindness / telemetry gaps**

* DNS Sinkholing.
* Daniel: "I think that's a brilliant idea to check if they are trying to blackhole telemetry."

‌

**Unexpected exclusions / allowlists / trust changes**

* Now sure how we do this without new api endpoints for polling these products with our datasource integrations.

‌

**Management tool misuse (living-off-the-land)?**

* more Powershell stuff??
* DataScience again I think.

‌

### External resources and analyses:

**[ESET EDR Killers Analysis](https://www.welivesecurity.com/en/eset-research/edr-killers-explained-beyond-the-drivers/)**

* **Bring Your Own Vulnerable Driver (BYOVD)**  
  Attackers load legitimate but vulnerable kernel drivers to gain kernel‑level privileges, allowing them to terminate, suspend, or blind EDR processes that are otherwise protected in user mode. This remains the most common and reliable technique observed by ESET. 
* **Abuse of legitimate anti‑rootkit utilities**  
  Threat actors repurpose legitimate anti‑rootkit tools, which inherently operate in kernel mode, to disable or interfere with EDR products by abusing their powerful inspection and termination capabilities. 
* **Driverless EDR disruption techniques**  
  Some EDR killers avoid kernel drivers entirely and instead block EDR functionality by suspending processes, interfering with inter‑process communication, or disrupting telemetry flows, demonstrating that kernel exploitation is not strictly required to impair defenses. 
* **Process termination and suspension of EDR components**  
  EDR killers commonly attempt to directly terminate or suspend EDR services and processes once sufficient privileges are obtained, creating a short window where the encryptor or follow‑on payload can execute without interference. 
* Blocking EDR communication and telemetry  
  Some tools focus on preventing EDR agents from communicating with their management or cloud backends, effectively blinding detection and response without fully uninstalling or crashing the agent. 
* **Separation of roles between EDR killers and encryptors**  
  ESET observes that EDR killers are purpose‑built for defense evasion and tampering only, while ransomware payloads focus solely on encryption—reinforcing modular attack design rather than multifunction malware. 
* **Reuse and swapping of drivers across unrelated EDR killer codebases**  
  The same vulnerable driver may appear in multiple distinct tools, and individual EDR killers may switch drivers over time, showing that driver choice is opportunistic rather than tightly coupled to a specific threat group. 
* **Commercialized and hardened EDR killer toolkits**  
  ESET documents the rise of professionally developed, commercially sold EDR killers ("EDR killer as a product"), which increases availability, standardizes techniques, and contributes to predictable behavior across intrusions. 
* **Custom scripts and lightweight EDR interference tooling**  
  In addition to full‑featured EDR killers, attackers sometimes deploy simpler custom scripts that attempt to disable or disrupt endpoint defenses as part of the same operational stage.
