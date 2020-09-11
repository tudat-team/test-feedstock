About test
==========

Home: http://tudat.tudelft.nl/

Package license: BSD

Feedstock license: BSD-3-Clause

Summary: A C++ platform to perform astrodynamics and space research.



Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
            <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64_boost_cpp1.67.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=linux&configuration=linux_64_boost_cpp1.67.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_boost_cpp1.68.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=linux&configuration=linux_64_boost_cpp1.68.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_boost_cpp1.69.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=linux&configuration=linux_64_boost_cpp1.69.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_boost_cpp1.70.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=linux&configuration=linux_64_boost_cpp1.70.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_boost_cpp1.67.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=osx&configuration=osx_64_boost_cpp1.67.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_boost_cpp1.68.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=osx&configuration=osx_64_boost_cpp1.68.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_boost_cpp1.69.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=osx&configuration=osx_64_boost_cpp1.69.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_boost_cpp1.70.0</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=osx&configuration=osx_64_boost_cpp1.70.0" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/test-feedstock?branchName=master&jobName=win&configuration=win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-test-green.svg)](https://anaconda.org/tudat-team/test) | [![Conda Downloads](https://img.shields.io/conda/dn/tudat-team/test.svg)](https://anaconda.org/tudat-team/test) | [![Conda Version](https://img.shields.io/conda/vn/tudat-team/test.svg)](https://anaconda.org/tudat-team/test) | [![Conda Platforms](https://img.shields.io/conda/pn/tudat-team/test.svg)](https://anaconda.org/tudat-team/test) |

Installing test
===============

Installing `test` from the `tudat-team` channel can be achieved by adding `tudat-team` to your channels with:

```
conda config --add channels tudat-team
```

Once the `tudat-team` channel has been enabled, `test` can be installed with:

```
conda install test
```

It is possible to list all of the versions of `test` available on your platform with:

```
conda search test --channel tudat-team
```




Updating test-feedstock
=======================

If you would like to improve the test recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tudat-team` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tudat-team` channel.
Note that all branches in the tudat-team/test-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ggarrett13](https://github.com/ggarrett13/)

