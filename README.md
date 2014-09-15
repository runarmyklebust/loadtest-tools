loadtest-tools
==============

A package with tools to be used for load-testing with MightyCrawler and jMeter

Step by step usage:
--------

1. Create a new crawler configuration in the ./configuration directory to specify what you would like to crawl
2. Generate urls by running run.sh configuration/<your config>. The result will be placed in the folder specified in the "outputDirectory" option of you crawler configuration
3. Use the ./getUrls.sh <path to result folder> to generate the urls, e.g "./getUrls.sh websites/enonic-prod/enonic.com > enonic_prod.url" 
4. Open jmeter, open the url-runner.jmx script. Add the path to the generated url-file to the "filename" property of the "UrlFile" element
5. Run