# LedgerSync::TemplateLedger

[![Build Status](https://travis-ci.org/LedgerSync/ledger_sync-template_ledger.svg?branch=master)](https://travis-ci.org/LedgerSync/ledger_sync-template_ledger)
[![Gem Version](https://badge.fury.io/rb/ledger_sync-template_ledger.svg)](https://badge.fury.io/rb/ledger_sync-template_ledger)
[![Coverage Status](https://coveralls.io/repos/github/LedgerSync/ledger_sync-template_ledger/badge.svg?branch=master)](https://coveralls.io/github/LedgerSync/ledger_sync-template_ledger?branch=master)

[ledgersync.dev](www.ledgersync.dev)

## Usage

This template ledger enables you to easily create your own ledger for public or private use. Although this is not an
exhaustive list, a good place to start assuming your ledger name is `NewLedger`:

1. Find and replace all `TEMPLATE_LEDGER` with `NEW_LEDGER`
2. Find and replace all `TemplateLedger` with `NewLedger`
3. Find and replace all `template_ledger` with `new_ledger`
4. Find and replace all `Template Ledger` with `New Ledger`
5. Find and replace all `template_ledger` directories and files with `new_ledger`
6. Remove `SampleResource` example files.
7. Create a Repository Secret with key `RUBY_GEM_KEY`. This is for Github Actions to publish the GEM. [How to create a Github Actions Reposiotry Secret.](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository)
8. Set Github Secret `COVERALLS_REPO_TOKEN`. This is for coveralls support.