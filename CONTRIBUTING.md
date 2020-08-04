# Contributing to VSTeam Quickstart Scripts

I am truly grateful for all the support developing VSTeam Quickstart Scripts. It means a lot that you spend your time to help improve this collection of scripts for the community. This repo contains all currently available VSTeam scripts contributed by the community.

The following information is relevant to get started with contributing to this repository.

+ [**Contribution guide**](/1-CONTRIBUTION-GUIDE/README.md#contribution-guide). Describes the minimal guidelines for contributing.
+ [**Best practices**](/1-CONTRIBUTION-GUIDE/best-practices.md#best-practices). Best practices for improving the quality of your script design.
+ [**Git tutorial**](/1-CONTRIBUTION-GUIDE/git-tutorial.md#git-tutorial). Step by step to get you started with Git.
+ [**Useful Tools**](/1-CONTRIBUTION-GUIDE/useful-tools.md#useful-tools). Useful resources and tools for Azure development.

## Steps to contribute

1. Create a folder for your script
2. Create a Readme.md that describes how to use the script
3. Develop script and commit changes.

### Housekeeping

The VSTeam module runs on macOS, Windows and Linux. Therefore, **casing is very important**.  If your script only works on one platform please describe in the Readme.md file. Also note if this only support a specific version of TFS or requires a minimum API version.

## Contribution Guide

To make sure your scripts are easy to use, please follow these guidelines.

## Files, folders and naming conventions

1. Every script and its associated files must be contained in its own **folder**. Name this folder something that describes what your script does. Usually this naming pattern looks like **level-resource-action** (e.g. 101-git-stale-branches)

+ **Required** - Numbering should start at 101. 100 is reserved for things that need to be at the top.
+ **Protip** - Try to keep the name of your script folder short so that it fits inside the GitHub folder name column width.

1. GitHub uses ASCII for ordering files and folder. For consistent ordering **create all files and folders in lowercase**. The only **exception** to this guideline is the **README.md**, that should be in the format **UPPERCASE.lowercase**.

1. Include a **README.md** file that explains how the script works.

+ Guidelines on the README.md file below.

1. The script file must be named **run.ps1**.

+ Use default values for parameters in the script whenever there is a value that will work for all users. Decorate parameter with `ValidateSet` whenever possible.

```powershell
[ValidateSet('Get', 'Post', 'Patch', 'Delete', 'Options', 'Put', 'Default', 'Head', 'Merge', 'Trace')]
[string] $Method,
```

1. Referenced scripts must be placed in a folder called **nested**.
1. Images used in the README.md must be placed in a folder called **images**.

```powershell
Mode    Name
----    ----
d----   images
d----   nested
-a---   README.md
-a---   run.ps1
```

## README.md

The README.md describes your script. A good description helps other community members to understand your script. The README.md uses [GitHub Flavored Markdown](https://guides.GitHub.com/features/mastering-markdown/) for formatting text. If you want to add images to your README.md file, store the images in the **images** folder. Reference the images in the README.md with a relative path (e.g. `![alt text](images/powershellTask.png "Azure DevOps Power Task")`). This ensures the link will reference the target repository if the source repository is forked. A good README.md contains the following sections

+ Description of what the script does
+ Tags, that can be used for search. Specify the tags comma separated and enclosed between two back-ticks (e.g Tags: `AzureDevOps, BearerToken, AzurePipelines`)
+ *Optional: Prerequisites
+ *Optional: Notes

## Azure DevOps CI

We have automated script validation through Azure DevOps CI. These builds can be accessed by clicking the 'Details' link at the bottom of the pull-request dialog. This process will ensure that your script conforms to all the rules mentioned above.

This project has a [Code of Conduct](CODE_OF_CONDUCT.md).