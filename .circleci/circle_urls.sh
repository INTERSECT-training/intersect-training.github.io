REPO_ID=$(curl https://api.github.com/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME} | jq --raw-output '.id')
echo "Repo ID is ${REPO_ID}"

URL=https://output.circle-artifacts.com/output/job/${CIRCLE_WORKFLOW_JOB_ID}/artifacts/${CIRCLE_NODE_INDEX}
BASEURL=/intersect-training.github.io
IMGURL=${URL}${BASEURL}/images/

echo "URL is ${URL}"

sed -i "35 s,.*,baseurl: $BASEURL,g" "_config.yml"
sed -i "48 s,.*,urlimg: $IMGURL,g" "_config.yml"
sed -i "34 s,.*,url: $URL,g" "_config.yml"
