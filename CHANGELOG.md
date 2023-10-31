# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.6.7] - 2023-10-31

### Changed

- Fixed Kyverno PolicyExceptions.

## [0.6.6] - 2023-10-27

### Changed

- Implemented the use of the `global.podSecurityStandards.enforced` toggle.
- Fixed an issue with the `falcoctl` image value structure.

## [0.6.5] - 2023-09-10

### Fixed

- Bring back port 53 for DNS resolution.

## [0.6.4] - 2023-08-22

### Fixed

- Fix Cilium Network Policy indentation.

## [0.6.3] - 2023-08-22

### Fixed

- Allow egress to Coredns in Cilium network policy.

## [0.6.2] - 2023-08-07

### Added

- Add cilium network policies support (enabled with `ciliumNetworkPolicy.enabled=true`).

## [0.6.1] - 2023-08-03

### Changed

- set `falcoctl` image to be taken from our own registry. 

## [0.6.0] - 2023-08-01

### Added

- Added a `.kube-linter.yaml` file.

### Changed

- Update `falco` to upstream version 0.35.1 / chart version 3.3.0.
- Update `falco-exporter` to upstream version 0.8.3 / chart version 0.9.6.
- Update `falcosidekick` to upstream version 2.27.0 / chart version 0.6.1.

### Removed

- Stop pushing to `openstack-app-collection`.

## [0.5.2] - 2023-05-04

### Changed

- Changed the default `PolicyException` namespace to `giantswarm`.
- Replace deprecated toleration `node-role.kubernetes.io/master` with `node-role.kubernetes.io/control-plane` on `falco` and `falco-exporter` Daemonsets.

## [0.5.1] - 2023-03-28

### Added

- Added Kyverno `PolicyExceptions` for necessary capabilities normally prohibited by PSS policies.

## [0.5.0] - 2023-02-01

### Changed

- Renamed `falco-app` to `falco`.

## [0.4.3] - 2022-12-21

### Changed

- Update icon url in chart
- Started using the falco-no-driver image! Reducing lots of vulnerabilities!

## [0.4.2] - 2022-11-17

### Changed

- Use local registries for Falco driver loader image.
- Remove update logic used for upstream 0.33.0 upgrade.

## [0.4.1] - 2022-11-16

### Added

- Added `VerticalPodAutoscaler` to `falco`.

## [0.4.0] - 2022-11-09

### Changed

- **Note:** Due to breaking changes in the official chart, it is not possible to cleanly replace an existing Falco DaemonSet from a previous version with this new version. As a result, when updating to this version, there will be a short Falco downtime while the existing DaemonSet is deleted and replaced.
- Update `falco` to upstream version 0.33.0 / chart version 2.2.0.
- Update `falco-exporter` to upstream version 0.8.0 / chart version 0.9.1.
- Update `falcosidekick` to upstream version 2.26.0 / chart version 0.5.9.

## [0.3.2] - 2022-03-25

### Changed

- Use `ebpf` driver instead of kernel module by default.

## [0.3.1] - 2022-03-10

### Changed

- Set `priorityClass` of `giantswarm-critical` for Falco DaemonSet.

## [0.3.0] - 2022-02-28

### Changed

- Update to upstream falco 1.17.2/0.31.0.
- Update to upstream falco-exporter 0.8.0/0.7.0.

## [0.2.0] - 2021-12-17

### Changed

- Update to upstream charts: Falco 1.16.2/0.30.0, exporter 0.6.3/0.6.0, sidekick 0.4.4/2.24.0.

## [0.1.2] - 2021-10-15

### Changed

- App icon

## [0.1.1] - 2021-08-26

### Added

- Push `falco-app` to `giantswarm` catalog.

## [0.1.0] - 2021-07-22

### Added

- Set `requests` and `limits` for falco-exporter.

### Changed

- Update charts to latest upstream versions.
- Push `falco-app` to provider collections (except KVM) when tagged.
- Use Giant Swarm-managed images.

[Unreleased]: https://github.com/giantswarm/falco-app/compare/v0.6.7...HEAD
[0.6.7]: https://github.com/giantswarm/falco-app/compare/v0.6.6...v0.6.7
[0.6.6]: https://github.com/giantswarm/falco-app/compare/v0.6.5...v0.6.6
[0.6.5]: https://github.com/giantswarm/falco-app/compare/v0.6.4...v0.6.5
[0.6.4]: https://github.com/giantswarm/falco-app/compare/v0.6.3...v0.6.4
[0.6.3]: https://github.com/giantswarm/falco-app/compare/v0.6.3...v0.6.3
[0.6.3]: https://github.com/giantswarm/falco-app/compare/v0.6.2...v0.6.3
[0.6.2]: https://github.com/giantswarm/falco-app/compare/v0.6.1...v0.6.2
[0.6.1]: https://github.com/giantswarm/falco-app/compare/v0.6.0...v0.6.1
[0.6.0]: https://github.com/giantswarm/falco-app/compare/v0.5.2...v0.6.0
[0.5.2]: https://github.com/giantswarm/falco-app/compare/v0.5.1...v0.5.2
[0.5.1]: https://github.com/giantswarm/falco-app/compare/v0.5.0...v0.5.1
[0.5.0]: https://github.com/giantswarm/falco-app/compare/v0.4.3...v0.5.0
[0.4.3]: https://github.com/giantswarm/falco-app/compare/v0.4.2...v0.4.3
[0.4.2]: https://github.com/giantswarm/falco-app/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/giantswarm/falco-app/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/falco-app/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/giantswarm/falco-app/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/falco-app/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/falco-app/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/falco-app/compare/v0.1.2...v0.2.0
[0.1.2]: https://github.com/giantswarm/falco-app/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/giantswarm/falco-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/falco-app/releases/tag/v0.1.0
