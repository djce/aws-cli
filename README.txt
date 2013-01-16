aws-cli - simple command line tools for Amazon Web Services

Why?

Mainly me just playing with the Ruby AWS SDK, and learning.

If I, or other people, happen to find these tools useful as a side effect,
then that's a bonus.

Requirements:

 - Ruby
 - The AWS Ruby SDK
 - An AWS account with an access key

Usage:

export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_KEY=...
export AWS_REGION=... # optional - defaults to eu-west-1

Then either:

  . setenv.sh
  some-command and args ...

or:

  ./sh some-command and args ...

