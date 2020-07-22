Demo directory structure:

/templates/     #Base directory containing vFW resources
    |- /base    #Directory containing base payload of CSAR package, doesn't need further proceeding
    |- /helm    #Directory containing helm charts that need to be packaged and attached to csar package
    \- /cba     #Directory containing CBA content to be included to csar package
/examples/      #Directory with context-specific overrides over general resources


In order to run newman scripts
 1) Go to https://www.npmjs.com/package/newman and install newman to order to execute postman requests on command line.
    Find more information about newman here: https://github.com/postmanlabs/newman/blob/develop/README.md#newman-options

 2) Got to directory vSIM_CNF_CDS_postman/newman
 3) Run runVSIM_01_setupCloud.sh and follow instructions if you have not setup a cloud environment before in your lab.
 3) Run runVSIM_02_lcm.sh and follow instructions to instantiate CNF.