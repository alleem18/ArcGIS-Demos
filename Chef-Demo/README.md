# Chef Automation Demo for Mock ArcGIS Server (Linux)

This project simulates how Esri automates **ArcGIS Enterprise deployments using Chef** — adapted as a mock implementation running on Ubuntu (via UTM on Mac M4).

 GitHub: [`ArcGIS-Demos/Chef-Demo`](https://github.com/alleem18/ArcGIS-Demos/tree/main/Chef-Demo)

---

##  What This Demo Covers

- Chef cookbook structure inspired by [Esri's `arcgis-cookbook`](https://github.com/Esri/arcgis-cookbook)  
-  `mock_arcgis` custom cookbook with `install_server` recipe  
-  Attribute-driven config in `config/server.json`  
-  Simulated log-based idempotency  
-  Fully Linux-native (Ubuntu 22.04 on UTM VM)

---

##  Directory Structure
 ![Directory Structure](images/screenshot1.png)






---

##  What Gets Configured?

The `install_server.rb` recipe does the following:

- Simulates checking system requirements
- Creates install and logs directories
- Generates an `install.log` file marking configuration success

**Screenshot 1:** First Chef run output showing installation steps and creation of log file

 ![First-time](images/screenshot1.png)


---

##  Idempotency Demonstration

The recipe checks for the existence of `install.log`:

```ruby
unless ::File.exist?("#{install_dir}/install.log")
  # perform installation tasks
end
```



This ensures **Chef converges only once** — following the same model as real ArcGIS automation.

**Screenshot 2:** Second `chef-client` run showing “up-to-date” resources (no actions taken)

 ![Second-time](images/screenshot1.png)

Manually removing the logs and rerunning shows that there is a fresh installation and in production environment, this is automated

 ![Third-time](images/screenshot1.png)


---

##  Development Journey

###  Getting Started

I explored the official [arcgis-cookbook](https://github.com/Esri/arcgis-cookbook), which includes over a dozen enterprise roles.

I used that as a reference to:

- Create a minimal Chef cookbook structure  
- Implement an `install_server` recipe  
- Customize `attributes/default.rb` like Esri does  

---

###  Issues Faced

| Problem                          | Resolution                                                 |
|----------------------------------|------------------------------------------------------------|
| `.deb` not recognized            | Downloaded correct version of `chef-workstation` for Ubuntu |
| Permission denied                | Ran `chef-client` with `sudo`                              |
| Path errors in recipe            | Used `Chef::Log` and `puts` for debugging                 |
| VM networking / public access    | Kept everything local to the UTM Linux VM                 |



---

## Final Output

When completed, you’ll have:

- Created mock install/logs directories  
- Logged timestamp in `install.log`  
- Demonstrated **Chef’s idempotency** with a second run  



---

##  Key Learnings

- Chef’s **converge model** (vs DSC’s MOF model)  
- How attributes and recipes drive **declarative infrastructure**  
- How to simulate deployment logic with placeholder resources  
- Parallels between **Esri’s cookbook** and real-world Chef usage  

---

##  To Run It Locally

Make sure you have **Chef Workstation** installed.

```bash
cd Chef-Demo

# Run chef in local mode using JSON attributes
sudo chef-client -z -j config/server.json -o mock_arcgis::install_server

```




##  References

- [Esri ArcGIS Cookbook](https://github.com/Esri/arcgis-cookbook)
- [Chef Docs](https://docs.chef.io/)
- [Learn Chef](https://learn.chef.io/)

