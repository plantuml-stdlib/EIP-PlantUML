# How to contribute 

Contributions to this project are always welcomed. 

Possible contributions could e.g. be: 

  * additional integration patterns not covered by the project yet
  * additional documentation and examples based on EIP-PLantUML
  * extension to the EIP pattern syntax 
  * testing of the extension 
  
## Testing 

Currently, there are no autoamtic testing provided for this project. 
Before submitting a pull request, make sure that any changes are reflected in the generated PLantUML diagrams as well as the diagrams do render as expected. 
Suggestions or contrubutions for increasing the project quality are welcomed.

## Adding new or changing existing pattern 

If pattern with sprites are added or existing spirtes are changed, please make sure to follow the steps provided below: 

* please do use only .PNG files as sprite ressource 
* if using any raw file format from wich the PNG is generated, make sure to add the raw file to the repository as well
* add both files to the ``/sprites`` folder 
* make sure the plantuml.jar is located in the ``scripts`` folder 
* to generate the correspnding .PUML sprite call the createsprite script in the scripts folder with the following syntax ``./encodesprite sprinte_name`` without the extension .PNG
* extend the EIP_elements.puml file to include the corresponding EIP elements 
* make sure the ``README.md`` file is extended correspondingly
* once all changes are done, run ``csi mergesprites.csx``, this C# script will merge all .PUML sprites as well as the ``EIP_elements.puml`` into the ``EIP-PlantUML.puml`` file within the ``dist`` folder
* run ``git add -u``before a checkin as the toolchain above does change various files autoamtically 
* make sure not to change any file within the ``dist``folder - all files within the folder * Use ´``dotnet tool install -g dotnet-script`` if you need to run the merge script under Windows
* Run
```
c:\dev\EIP-PlantUML\scripts>dotnet-script mergePuml.csx
EIP-PlantUML Puml Merger
53 sprites merged
Merging finished

```





## Committing

Please write clear commit messages and avoid generic messages. For complex changes please add extended commit messages as below. 

    $ git commit -m "A summary of the commit
    > 
    > A paragraph describing what changed and its impact."
