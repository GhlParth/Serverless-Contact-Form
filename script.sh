terraform -chdir=terraform output -json instance_public_ips | jq -r '.[]' > ansible/ips.txt

printf "[web]\n" > ansible/inventory.ini

while read ip ; do
    printf "%s ansible_user=ubuntu ansible_ssh_private_key_file=/home/parth/ec2-key-pair.pem\n" "$ip" >> ansible/inventory.ini
done < ansible/ips.txt