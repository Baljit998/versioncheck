Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.0-87-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Jan  2 07:50:02 PM IST 2024

  System load:  0.04833984375       Processes:                197
  Usage of /:   25.6% of 191.86GB   Users logged in:          0
  Memory usage: 63%                 IPv4 address for docker0: 172.17.0.1
  Swap usage:   1%                  IPv4 address for enp1s0:  103.66.206.216

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

4 additional security updates can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm


*** System restart required ***
Last login: Tue Jan  2 18:59:26 2024 from 112.196.30.231
frappe@exp:~$ cd frappe-bench-1
frappe@exp:~/frappe-bench-1$ ls
apps  archived  config  env  logs  patches.txt  Procfile  sites
frappe@exp:~/frappe-bench-1$ cd apps/
frappe@exp:~/frappe-bench-1/apps$ ls
drive  erpnext  frappe  helpdesk  noticeboard  tldraw_whiteboard
frappe@exp:~/frappe-bench-1/apps$ cd ..
frappe@exp:~/frappe-bench-1$ nvm use 21.5.0
Now using node v21.5.0 (npm v10.2.4)
frappe@exp:~/frappe-bench-1$ bench --site all list-apps

frappe   15.7.0 version-15
erpnext  15.8.3 version-15
drive    0.0.1  main
helpdesk 0.10.0 main

frappe@exp:~/frappe-bench-1$ bench remove-app tldraw_whiteboard
Checking if app installed on active sites...
$ /home/frappe/frappe-bench-1/env/bin/python -m pip uninstall -y tldraw_whiteboard
Found existing installation: tldraw_whiteboard 0.0.1
Uninstalling tldraw_whiteboard-0.0.1:
  Successfully uninstalled tldraw_whiteboard-0.0.1
INFO: App moved from apps/tldraw_whiteboard to archived/apps/tldraw_whiteboard-2024-01-02
$ supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-node-socketio: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: started
frappe@exp:~/frappe-bench-1$ node -v
v21.5.0
frappe@exp:~/frappe-bench-1$ bench get-app https://github.com/NagariaHussain/tldraw_whiteboard.git
Getting tldraw_whiteboard
$ git clone https://github.com/NagariaHussain/tldraw_whiteboard.git  --depth 1 --origin upstream
Cloning into 'tldraw_whiteboard'...
remote: Enumerating objects: 43, done.
remote: Counting objects: 100% (43/43), done.
remote: Compressing objects: 100% (36/36), done.
remote: Total 43 (delta 0), reused 34 (delta 0), pack-reused 0
Receiving objects: 100% (43/43), 320.91 KiB | 1.19 MiB/s, done.
Ignoring dependencies of https://github.com/NagariaHussain/tldraw_whiteboard.git. To install dependencies use --resolve-deps
Installing tldraw_whiteboard
$ /home/frappe/frappe-bench-1/env/bin/python -m pip install --quiet --upgrade -e /home/frappe/frappe-bench-1/apps/tldraw_whiteboard
yarn install v1.22.19
warning ../../../../package.json: No license field
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
Done in 3.15s.
$ bench build --app tldraw_whiteboard
✔ Application Assets Linked


yarn run v1.22.19
warning ../../../../package.json: No license field
$ node esbuild --production --apps tldraw_whiteboard --run-build-command
File                                                        Size

tldraw_whiteboard/dist/
└─ whiteboard.bundle.RDEKUVNN.js                            1054.59 Kb

tldraw_whiteboard/dist/css/
└─ whiteboard.bundle.7YL3FOUO.css                           65.23 Kb

tldraw_whiteboard/dist/css-rtl/
└─ whiteboard.bundle.RLH6OK7B.css                           65.29 Kb

 DONE  Total Build Time: 1.610s

Done in 4.92s.
$ supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-node-socketio: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: started
frappe@exp:~/frappe-bench-1$ bench --site exp.gndec.ac.in install-app tldraw_whiteboard

Installing tldraw_whiteboard...
Updating DocTypes for tldraw_whiteboard: [========================================] 100%
Updating Dashboard for tldraw_whiteboard
frappe@exp:~/frappe-bench-1$ cd apps
frappe@exp:~/frappe-bench-1/apps$ cd drive/
frappe@exp:~/frappe-bench-1/apps/drive$ git status
On branch main
Your branch is up to date with 'upstream/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   frontend/package-lock.json
        modified:   frontend/yarn.lock

no changes added to commit (use "git add" and/or "git commit -a")
frappe@exp:~/frappe-bench-1/apps/drive$ git pull
remote: Enumerating objects: 7968, done.
remote: Counting objects: 100% (7968/7968), done.
remote: Compressing objects: 100% (1770/1770), done.
remote: Total 7789 (delta 6153), reused 7238 (delta 5979), pack-reused 0
Receiving objects: 100% (7789/7789), 6.64 MiB | 2.63 MiB/s, done.
Resolving deltas: 100% (6153/6153), completed with 130 local objects.
From https://github.com/Baljit998/F-Drive
   ec54798..208c059  main       -> upstream/main
Updating ec54798..208c059
error: Your local changes to the following files would be overwritten by merge:
        frontend/package-lock.json
        frontend/yarn.lock
Please commit your changes or stash them before you merge.
Aborting
frappe@exp:~/frappe-bench-1/apps/drive$ git stash
Saved working directory and index state WIP on main: ec54798 Merge pull request #1 from Baljit998/mydev
frappe@exp:~/frappe-bench-1/apps/drive$ git pull
Updating ec54798..208c059
Fast-forward
 drive/api/files.py                                                           |  129 ++---
 drive/api/nested_folder.py                                                   |   97 ----
 drive/api/permissions.py                                                     |    1 -
 frontend/package-lock.json                                                   |  819 +++++++++++++++++++-------
 frontend/package.json                                                        |    4 +-
 frontend/src/App.vue                                                         |    2 +-
 frontend/src/components/DocEditor/FileUploader.vue                           |    3 +
 frontend/src/components/DocEditor/InsertImage.vue                            |    9 +-
 frontend/src/components/DocEditor/InsertVideo.vue                            |   13 +-
 frontend/src/components/DocEditor/TextEditor.vue                             |   19 +-
 frontend/src/components/DocEditor/icons/align-center.vue                     |    8 +
 frontend/src/components/DocEditor/icons/align-left.vue                       |    8 +
 frontend/src/components/DocEditor/icons/align-right.vue                      |    8 +
 frontend/src/components/DocEditor/icons/delete.vue                           |    8 +
 frontend/src/components/DocEditor/icons/float-left.vue                       |    8 +
 frontend/src/components/DocEditor/icons/float-right.vue                      |    8 +
 frontend/src/components/DocEditor/resizeableMedia/ResizableMediaNodeView.vue |  364 ++++++++++++
 frontend/src/components/DocEditor/resizeableMedia/dropMedia.ts               |  120 ++++
 frontend/src/components/DocEditor/resizeableMedia/index.ts                   |    1 +
 frontend/src/components/DocEditor/resizeableMedia/resizableMedia.ts          |  199 +++++++
 frontend/src/components/DocEditor/resizeableMedia/resizableMediaMenuUtil.ts  |   75 +++
 frontend/src/components/EmptyEntityContextMenu.vue                           |    1 -
 frontend/src/components/EntityContextMenu.vue                                |    1 -
 frontend/src/components/FileRender.vue                                       |   56 +-
 frontend/src/components/FileTypePreview/AudioPreview.vue                     |   65 +++
 frontend/src/components/FileTypePreview/ImagePreview.vue                     |   11 +
 frontend/src/components/FileTypePreview/SheetPreview.vue                     |    1 +
 frontend/src/components/FileTypePreview/TextPreview.vue                      |    5 +-
 frontend/src/components/FileTypePreview/VideoPreview.vue                     |   63 +-
 frontend/src/components/GeneralDialog.vue                                    |    7 +-
 frontend/src/components/RenameDialog.vue                                     |    8 +-
 frontend/src/components/ShareDialog.vue                                      |    6 +-
 frontend/src/main.js                                                         |   20 +
 frontend/src/pages/Document.vue                                              |   21 +-
 frontend/src/pages/Error.vue                                                 |   33 ++
 frontend/src/pages/Favourites.vue                                            |    5 +
 frontend/src/pages/File.vue                                                  |   71 ++-
 frontend/src/pages/Folder.vue                                                |   25 +
 frontend/src/pages/Home.vue                                                  |    5 +
 frontend/src/pages/Shared.vue                                                |    7 +-
 frontend/src/pages/Trash.vue                                                 |    5 +
 frontend/src/router.js                                                       |   24 +-
 frontend/src/store.js                                                        |   11 +-
 frontend/yarn.lock                                                           | 3219 -------------------------------------------------------------------------------------------------------
 44 files changed, 1901 insertions(+), 3672 deletions(-)
 delete mode 100644 drive/api/nested_folder.py
 create mode 100644 frontend/src/components/DocEditor/icons/align-center.vue
 create mode 100644 frontend/src/components/DocEditor/icons/align-left.vue
 create mode 100644 frontend/src/components/DocEditor/icons/align-right.vue
 create mode 100644 frontend/src/components/DocEditor/icons/delete.vue
 create mode 100644 frontend/src/components/DocEditor/icons/float-left.vue
 create mode 100644 frontend/src/components/DocEditor/icons/float-right.vue
 create mode 100644 frontend/src/components/DocEditor/resizeableMedia/ResizableMediaNodeView.vue
 create mode 100644 frontend/src/components/DocEditor/resizeableMedia/dropMedia.ts
 create mode 100644 frontend/src/components/DocEditor/resizeableMedia/index.ts
 create mode 100644 frontend/src/components/DocEditor/resizeableMedia/resizableMedia.ts
 create mode 100644 frontend/src/components/DocEditor/resizeableMedia/resizableMediaMenuUtil.ts
 create mode 100644 frontend/src/components/FileTypePreview/AudioPreview.vue
 create mode 100644 frontend/src/pages/Error.vue
 delete mode 100644 frontend/yarn.lock
frappe@exp:~/frappe-bench-1/apps/drive$ git stash apply
CONFLICT (modify/delete): frontend/yarn.lock deleted in Updated upstream and modified in Stashed changes. Version Stashed changes of frontend/yarn.lock left in tree.
Auto-merging frontend/package-lock.json
CONFLICT (content): Merge conflict in frontend/package-lock.json
On branch main
Your branch is up to date with 'upstream/main'.

Unmerged paths:
  (use "git restore --staged <file>..." to unstage)
  (use "git add/rm <file>..." as appropriate to mark resolution)
        both modified:   frontend/package-lock.json
        deleted by us:   frontend/yarn.lock

no changes added to commit (use "git add" and/or "git commit -a")
frappe@exp:~/frappe-bench-1/apps/drive$ git status
On branch main
Your branch is up to date with 'upstream/main'.

Unmerged paths:
  (use "git restore --staged <file>..." to unstage)
  (use "git add/rm <file>..." as appropriate to mark resolution)
        both modified:   frontend/package-lock.json
        deleted by us:   frontend/yarn.lock

no changes added to commit (use "git add" and/or "git commit -a")
frappe@exp:~/frappe-bench-1/apps/drive$ cd ../../
frappe@exp:~/frappe-bench-1$ bench restart
$ supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-node-socketio: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: started
frappe@exp:~/frappe-bench-1$
