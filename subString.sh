#!/bin/bash

read -p "Enter String:" str
read -p "Enter Position:" pos
read -p "Enter Length:" len
echo ${str:pos}
echo ${str:pos:len}
