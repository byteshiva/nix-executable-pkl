
# Pkl CLI on NixOS

This repository provides a streamlined setup for using the Pkl CLI tool on NixOS, utilizing Nix flakes for easy configuration.

## Getting Started

### Prerequisites

Make sure you have Nix installed. If not, you can install it using the following command:

```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```

### Setup

1. Clone this repository:

```bash
git clone https://github.com/byteshiva/nix-executable-pkl.git
cd nix-executable-pkl
```

2. Enter the development environment:

```bash
nix develop
```

3. Run the sample Pkl configuration:

```bash
# Evaluate Pkl configuration file
jpkl eval bird.pkl

# Evaluate Pkl configuration file and output in JSON format
jpkl eval -f json bird.pkl

# Evaluate Pkl configuration file and output in XML (plist) format
jpkl eval -f plist bird.pkl
```

4. Customize the configuration:

Edit the `bird.pkl` file to modify the sample Pkl configuration. Rerun the `jpkl eval` commands to see the changes.

```bash
jpkl eval bird.pkl
```

## Sample Configuration

The provided `bird.pkl` file contains a simple configuration for a bird. Here's an example:

```pkl
name = "Swallow"
job {
  title = "Sr. Nest Maker"
  company = "Nests R Us"
  yearsOfExperience = 2
}
```

Feel free to experiment with different configurations to see how Pkl handles them.

Happy configuring!


