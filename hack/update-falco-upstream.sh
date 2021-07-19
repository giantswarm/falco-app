git remote add -f --no-tags upstream-copy git@github.com:giantswarm/falco-charts.git
git fetch upstream-copy master
git checkout master

git pull
git checkout -b update-falco-2
git checkout upstream-copy/master
git subtree split -P falco-exporter -b temp-split-branch
git checkout update-falco-2
git subtree merge --squash -P helm/falco-app/charts/falco-exporter temp-split-branch
git branch -D temp-split-branch

git checkout upstream-copy/master
git subtree split -P falco -b temp-split-branch
git checkout update-falco-2
git subtree merge --squash -P helm/falco-app/charts/falco temp-split-branch
git branch -D temp-split-branch

git checkout upstream-copy/master
git subtree split -P falcosidekick -b temp-split-branch
git checkout update-falco-2
git subtree merge --squash -P helm/falco-app/charts/falcosidekick temp-split-branch
git branch -D temp-split-branch
