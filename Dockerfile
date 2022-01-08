- hosts: test
  vars:
    packages_build:
      - git
      - ngingx
      - curl
    packages_host:
      - git
      - ngingx
      - curl
    app_dir: /root/project
    repo_url: https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
  become: yes
  tasks:
  - name: install packages-build-host
    apt:
      name: "{{ item }}"
      state: latest
      update_cache: yes
  - name: copy file
    copy:
      src: ./file1
      dest: /home/user/
   - name: start and enable tomcat
    service:
      name: tomcat
      daemon_reload: yes
      state: started
      enabled: yes
  - name: Unconditionally reboot the machine with all defaults
  reboot:

