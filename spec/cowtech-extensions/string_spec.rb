# encoding: utf-8
#
# This file is part of the cowtech-extensions gem. Copyright (C) 2011 and above Shogun <shogun_panda@me.com>.
# Licensed under the MIT license, which can be found at http://www.opensource.org/licenses/mit-license.php.
#

require "spec_helper"

describe Cowtech::Extensions::String do
  let(:reference) { "abc òùà èé &amp;gt;" }
  let(:translated_reference) { "abc oua ee &amp;gt;" }
  let(:untitleized_reference) { "abc-òùà-èé-&amp;gt;" }
  let(:amp_reference) { "abc òùà èé &gt;" }

  before(:all) do
    ::Cowtech::Extensions.load!
  end

  describe "#remove_accents" do
    it "should translate accents" do
      expect(reference.remove_accents).to eq(translated_reference)
    end
  end

  describe "#untitleize" do
    it "should convert spaces to dashes" do
      expect(reference.untitleize).to eq(untitleized_reference)
    end
  end

  describe "#replace_ampersands" do
    it "should remove HTML ampersands" do
      expect(reference.replace_ampersands).to eq(amp_reference)
    end
  end

  describe "#value" do
    it "should return the string itself" do
      expect(reference.value).to eq(reference)
      expect(translated_reference.value).to eq(translated_reference)
      expect(untitleized_reference.value).to eq(untitleized_reference)
      expect(amp_reference.value).to eq(amp_reference)
    end
  end
end