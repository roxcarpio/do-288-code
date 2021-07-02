if ! [ -x "$(command -v skopeo)" ]; then
  echo 'Error: skopeo is not installed.' >&2
  echo "Follow the installation guide: https://github.com/containers/skopeo/blob/main/install.md"
  exit 1
fi

# Read Password
echo -n "Quay.io Username: "
read username
echo -n "Quay.io Password: "
read -s password
echo


array_images=("hi-users-private:0.1" "hi-users-private:0.2" "hi-users-private:0.3" "summer-countdown" "hi-users:0.1" "php-hello:0.1" "php-hello:0.2" "info-script:0.1" "ubi:latest")

skopeo login quay.io -u $username -p $password 

for image in "${array_images[@]}"
do
    echo "Transfiriendo imagen $image: "
    skopeo copy --dest-creds $username:$password \
    docker://quay.io/roxcarpio/$image \
    docker://quay.io/$username/$image
    echo
done

echo

echo "Revisa que tienes las siguientes imagenes en tu repositorio: "

for image in "${array_images[@]}"
do
    echo "- quay.io/$username/$image"
done






# quay.io/roxcarpio/hi-users:0.1



# quay.io/roxcarpio/ubi:latest
# quay.io/roxcarpio/info-script:0.1

# quay.io/roxcarpio/php-hello:0.1
# quay.io/roxcarpio/php-hello:0.2
# # Run Command
# echo $username
# echo $password

#  quay.io/roxcarpio/hi-users-private:0.1 -- > privado
#  quay.io/roxcarpio/hi-users-private:todas