for region in $(aws ec2 describe-regions --query "Regions[*].RegionName" --output text); do
  echo "Checking region: $region"
  aws ec2 describe-vpcs --vpc-ids vpc-060d38993b50cc0df --region $region --query 'Vpcs[*].VpcId' --output text
done
