# docker runner

## pull gitlab runner image

mount a config volume into the gitlab-runner
```
sudo docker run -d --name gitlab-runner --restart always \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
```

```
sudo docker start gitlab-runner
```

enter the newly created gitlab-runner container via bash
```
sudo docker exec -ti gitlab-runner
```
