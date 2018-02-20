download_packages:
	pip install --download vendor . --no-binary :all:

clean:
	rm -rf package
	find . -regex "\(.*__pycache__.*\|*.py[co]\)" -delete
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info

zip: clean
	mkdir package
	zip -x .git __pycache__ *.egg_info *.egg dist MANIFEST -r package/cf-crypto-test.zip *

push: download_packages zip
	cf push cf-crypto-test -f manifest.yml -p package/cf-crypto-test.zip
