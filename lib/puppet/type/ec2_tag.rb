# Custom type for creating EC2 tags on instances

Puppet::Type.newtype(:ec2_tag) do
  @doc = "Create an EC2 tag on an instance"

  ensurable

  newparam(:name) do
    desc "The name of the tag"
  end

  newproperty(:value) do
    desc "The value the tag should have"
  end

  # Ensure that the aws-sdk gem is installed before we do anything
  autorequire(:package) do
    'aws-sdk'
  end

end
