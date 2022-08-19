REPO_ID=$(curl https://api.github.com/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME} | jq --raw-output '.id')
echo "Repo ID is ${REPO_ID}"
URL=https://${CIRCLE_BUILD_NUM}-${REPO_ID}-gh.circle-artifacts.com/0
BASEURL=/intersect-training.github.io
IMGURL=${URL}${BASEURL}/images/
#BASEURL=https://${CIRCLE_BUILD_NUM}-${REPO_ID}-gh.circle-artifacts.com/0/intersect-training.github.io
#IMGURL=${BASEURL}/images/
echo "URL is ${URL}"
sed -i "35 s,.*,baseurl: $BASEURL,g" "_config.yml"
sed -i "48 s,.*,urlimg: $IMGURL,g" "_config.yml"
sed -i "34 s,.*,url: $URL,g" "_config.yml"
