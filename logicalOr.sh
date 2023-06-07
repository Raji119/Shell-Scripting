#!/bin/bash

age=16
name="John"

# Check if age is greater than 18 or name is "John"
if [ "$age" -gt 18 ] || [ "$name" = "John" ]; then
  echo "Access granted"
else
  echo "Access denied"
fi
