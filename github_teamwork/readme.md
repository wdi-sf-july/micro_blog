# Team Workflow with Github

### Getting Started

0. Have one team member set up a repository and then have your other team members fork and then clone the repository.
1. `git remote add upstream <git_url_of_the_blessed_repository>`
2. Always run `git pull upstream` or `git fetch upstream` before modifying code on your branch.
3. Commit frequently to avoid merge conflicts.
4. If you create your own branch use the following command to create a branch and switch to it right away
	- `git checkout -b NAME_OF_NEW_BRANCH`
6. To switch to another branch use:
	- `git checkout NAME_OF_BRANCH`
7. To see all of your branches use: 
	- `git branch`
5. To push that branch on github, use:
	- `git push origin NAME_OF_BRANCH`
6. When you are ready to merge your branch back to master, first run `git checkout master` and then `git merge NAME_OF_BRANCH`
7. If you encounter merge conflicts, resolve them before you submit a pull request.
7. When you are ready to push your code, submit a [pull request](https://help.github.com/articles/using-pull-requests) - and upon acceptance, your code will be added to the main repository.

>Note: You should never be working on the master branch & the master branch should always be updated before merging.


### Performing a pull request

- First make sure that you have forked and cloned the repository (your remote should be pointing to your github account) and then click on the compare and review icon - you can see it here ![compare and review icon](https://github-images.s3.amazonaws.com/help/pull_requests/pull-request-start-review-button.png)

- Then review the pull request. Look through each commit, identify changed files, and if need be and comment on any commits. This is where you'll determine whether you want the pull request to be modified further or to be accepted for merging.

- Once you are ok with these new changes merge them with your master branch
