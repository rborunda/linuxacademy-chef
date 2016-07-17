

default["apache"]["sites"]["rborunda-gmail-com2"] = { "site_title" => "rborunda2 website coming soon", "port" => 80, "domain" => "rborunda-gmail-com2.mylabserver.com" }
default["apache"]["sites"]["rborunda-gmail-com2b"] = {"site_title" => "rborunda2b website coming soon!", "port" => 80, "domain" => "rborunda-gmail-com2b.mylabserver.com" }

default["apache"]["sites"]["rborunda-gmail-com4"] = {"site_title" => "rborunda4 website is coming soon", "port" => 80, "domain" => "rborunda-gmail-com4.mylabserver.com"} 



case node["platform"] 
when = "centos"
	default["apache"]["package"] = "httpd"
when = "ubuntu"
	default["apache"]["package"] = "apache2"
end
