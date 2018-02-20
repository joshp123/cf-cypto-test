from setuptools import setup

setup(
    name='mypackage',
    version='1.0',
    description='testing cf buildpacks',
    packages=['mypackage'],
    install_requires=[
        'cffi',
        'cryptography',
    ],
)
