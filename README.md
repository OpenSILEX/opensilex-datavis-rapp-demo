# compareVariablesDemo

R Application running with OpenCPU 

Install this app using the following command. And run it as follows :

In your favourite R environment (Rstudio?)

1. install opencpu package:

```install.package('opencpu')```

2. installremotes and phisWSClientR package:

```install.package('remotes');```
```install_github("OpenSILEX/phisWSClientR", build_vignettes=TRUE, ref="v2.0.1")```


3. download the app 

```install_apps("opensilex/opensilex-datavis-rapp-demo")```

4. start the app

```ocpu_start_app("opensilex/opensilex-datavis-rapp-demo")```

And finally open the following link in your browser :
(it should be done automatically)
http://localhost:5656/ocpu/apps/OpenSILEX/opensilex-datavis-rapp-demo/www/
