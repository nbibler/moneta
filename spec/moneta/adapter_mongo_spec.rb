# coding: binary
# Generated by generate-specs
require 'helper'

describe_moneta "adapter_mongo" do
  def features
    [:create, :expires, :increment]
  end

  def new_store
    Moneta::Adapters::Mongo.new(:db => "adapter_mongo")
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'concurrent_create'
  it_should_behave_like 'concurrent_increment'
  it_should_behave_like 'create'
  it_should_behave_like 'create_expires'
  it_should_behave_like 'expires'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_stringkey_hashvalue'
  it_should_behave_like 'null_stringkey_integervalue'
  it_should_behave_like 'null_pathkey_stringvalue'
  it_should_behave_like 'null_pathkey_hashvalue'
  it_should_behave_like 'null_pathkey_integervalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_hashvalue'
  it_should_behave_like 'persist_stringkey_integervalue'
  it_should_behave_like 'persist_pathkey_stringvalue'
  it_should_behave_like 'persist_pathkey_hashvalue'
  it_should_behave_like 'persist_pathkey_integervalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_hashvalue'
  it_should_behave_like 'returndifferent_pathkey_stringvalue'
  it_should_behave_like 'returndifferent_pathkey_hashvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_hashvalue'
  it_should_behave_like 'store_stringkey_integervalue'
  it_should_behave_like 'store_pathkey_stringvalue'
  it_should_behave_like 'store_pathkey_hashvalue'
  it_should_behave_like 'store_pathkey_integervalue'
  it_should_behave_like 'store_large'
end
