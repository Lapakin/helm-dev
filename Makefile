.PHONY: index-repo
index-repo:
	helm repo index docs/ --url https://lapakin.github.io/helm-dev/docs
	mv docs/index.yaml .

.PHONY:package-all
package-all:
	helm package charts/* --destination docs/