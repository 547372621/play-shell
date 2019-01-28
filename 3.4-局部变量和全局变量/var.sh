#!/bin/bash
#

var1="Hello world"

function test
{
	local var2=87
}

test

echo $var1
echo $var2
