#
# Cookbook Name:: opsworks-rails-mongoid
# Recipe:: mongods
#
# Copyright (C) 2014 Chandan Benjaram
#
# All rights reserved - Do Not Redistribute
#

node.override['mongodb']['config']['dbpath'] = "/data/mongodb"
node.override['mongodb']['config']['logpath'] = "/data/log/mongodb/mongodb.log"

include_recipe "mongodb::mongodb_org_repo"
include_recipe "mongodb::default"