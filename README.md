# OpenAlgo Helm Chart

This repository contains the Helm chart for deploying OpenAlgo.

## Helm Chart Deployment

Follow these steps to deploy the OpenAlgo Helm chart:

### Prerequisites

- [Helm](https://helm.sh/docs/intro/install/) must be installed on your system.
- (Optional) Ensure you have access to a Kubernetes cluster and the correct kubeconfig context is set.

### 1. Add the Helm Repository

```sh
helm repo add openalgo-test https://helm.diyd2.in/
```

### 2. Update the Helm Repositories

```sh
helm repo update
```

### 3. (Optional) Create a Namespace

If you want to install into a specific namespace (e.g., `openalgo`):

```sh
kubectl create namespace openalgo
```

### 4. Test the Installation with a Dry Run

```sh
helm install openalgo openalgo-test/openalgo --debug --dry-run
```

### 5. Install the Chart

```sh
helm install openalgo openalgo-test/openalgo
```

- To install into a specific namespace, add `-n openalgo` to the command:

  ```sh
  helm install openalgo openalgo-test/openalgo -n openalgo
  ```

### 6. Uninstall the Chart

To uninstall the release:

```sh
helm uninstall openalgo
```

- If installed in a namespace:

  ```sh
  helm uninstall openalgo -n openalgo
  ```

### 7. Additional Configuration

You can override default values using the `--set` flag or by providing a custom `values.yaml` file:

```sh
helm install openalgo openalgo-test/openalgo --set key=value
# or
helm install openalgo openalgo-test/openalgo -f my-values.yaml
```

For application specific information, refer to [OpenAlgo project](https://openalgo.in)

For more details, refer to the [Helm documentation](https://helm.sh/docs/).


