class CsvValidator < Formula
  desc 'Install the csv-validator'
  homepage 'http://digital-preservation.github.io/csv-validator/'
  version '1.1.2'
  sha256 '138b2418199c922b6e6284cf8c62bddc599a6d71c5bbe114c2ea99c8690269cd'
  url "https://github.com/digital-preservation/csv-validator/releases/download/#{version}/csv-validator-cmd-#{version}-application.zip"

  def install
    rm Dir["*.cmd"]
    lib.install Dir["lib/*"]
    bin.install "./bin/validate"
  end

  test do
    system "#{bin}/validate"
  end
end
