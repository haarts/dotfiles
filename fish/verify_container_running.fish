function verify_container_running --argument-names container
  set container_status (curl -s --unix-socket /var/lib/lxd/unix.socket \
                          -H "Content-Type: application/json" \
                          -X GET \
                          lxd/1.0/containers/$container \
                          | jq '.metadata.status')

  if [ $container_status != "\"Running\"" ]
    lxc start $container
  end
end
