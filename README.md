# Helm Exploration

## Creating a helm chart

To create a helm chart use `helm create [CHART_NAME]` command.

The command will scaffold a new folder called `[CHART_NAME]` with the following files inside

```
.
├── Chart.yaml
├── README.md
├── charts
├── templates
│   ├── NOTES.txt
│   ├── _helpers.tpl
│   ├── deployment.yaml
│   ├── hpa.yaml
│   ├── ingress.yaml
│   ├── service.yaml
│   ├── serviceaccount.yaml
│   └── tests
│       └── test-connection.yaml
└── values.yaml
```

## How to render the template

To render a template use `helm template .` command.

The previous command will only render the template if everything works correctly. If you need to debug or inspect why the generated yaml is not working then you could use the `--debug` option when running the command.

## How to pull helm chart

To pull helm chart use `helm pull [REPO]/[CHARTNAME]` command. This will pull the helm chart in a `.tar` file format.

You could use `--untar` command to untar the chart after pull.

To pull only the helm chart values you could do `helm show values [CHARTNAME] > [FILENAME]`

## How to install or upgrade helm chart

To install a helm chart use `helm install [RELEASE_NAME] [REPO/CHARTNAME]` command.

To upgrade a helm chart use `helm upgrade [RELEASE_NAME] [REPO/CHARTNAME]` command.

You could install and upgrade a helm chart using a different values file using `--values` or `-f` flag.

## How to install dependency charts
