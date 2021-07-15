# puppy-eagle
Repo for bootstrapping React Native, Expo projects.

Project Objective:
- Make getting up and going on a React Native project easy and seemless.

We de this by:
- Stripping away the need for any major dependencies being installed on the developer machine.
  - Major dependencies has been reduced to 1 (Docker) instead of many
  - No more "but it worked on my machine"
- Using commands that are easy to understand and use for building, running, and deploying.
  - The Makefile is being utilized since it can encapsulate commands, documents them, and works almost everywhere.

## Installaition

0. Install Docker on your local machine. Go here for more details: https://docs.docker.com/desktop/
1. Download or clone the repo to your local machine: `git clone https://github.com/curtjen/puppy-eagle`
2. Navigate to the directory: `cd puppy-eagle`
3. Build the Docker image: `make build`

## Usage

### Development

You can run the development server on your local machine by running:
```
make run
```

- This will spin up a new Docker container and local server that you can view in your browser at: http://localhost:19006/
- Files for the React Native application can be found in the `react_native_app` directory.

### Building

**This is still a work in progress**
