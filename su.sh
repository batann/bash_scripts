#!/bin/bash


abc=$(yad --entry-text="File Name:" --entry)

featherpad $abc.wiki
