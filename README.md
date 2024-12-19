# Achillobator
Larger, more lethal Bluefin. `bluefin:lts` prototype built on CentOS Stream10.

![image](https://github.com/user-attachments/assets/2e160934-44e6-4aee-b2b8-accb3bcf0a41)

# Purpose

Experimentation and reckless feeding. PRs gladly welcomed. Not sure how many people would be interested in this so I guess we'll find out. 

## Current Status

Working on a base image first before trying the desktop parts. The more people dive in the faster we can get there. 😄

## Rationale

With most of my user facing life being in my browser and flatpak, a slower cadenced OS has a proven use case. With `bootc` being a critical piece of RHEL image mode, it means that stack in CentOS will be well maintained. And with the flexibility of the container model, we can source content from anywhere. This is a spike to see if it's worth adding this as a `bluefin:lts` branch, or worse case, a starting point for someone who wants to grow a community around this use case. 

- GNOME47 will be shipping, we have builds for our stuff already, 6.12 kernel covers Framework's current laptops
- Is there going to be a reliable GNOME COPR for El10?

## Building

To build locally and then spit out a VM: 

```
just build-vm 1
```

qcow2 file is written to the `output/` directory. Username and password are `centos`/`centos`

## Current Ideas

- hyperscale sig provides newer kernels, we don't need to stay old old.
- EPEL will fill in lots of stuff
- Long lived and boring, we expect even less maintenance than Fedora-based Bluefin
