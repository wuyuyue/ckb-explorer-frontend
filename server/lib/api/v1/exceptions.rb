module Api
  module V1
    module Exceptions
      class Error < StandardError
        attr_accessor :code, :status, :title, :detail, :href

        def initialize(code:, status:, title:, detail:, href:)
          @code = code
          @status = status
          @title = title
          @detail = detail
          @href = href
        end
      end

      class WrongContentTypeError < Error
        def initialize
          super code: 1001, status: 415, title: "Unsupported Media Type", detail: "Content Type must be application/vnd.api+json", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class WrongAcceptError < Error
        def initialize
          super code: 1002, status: 406, title: "Not Acceptable", detail: "Accept must be application/vnd.api+json", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class BlockQueryKeyInvalidError < Error
        def initialize
          super code: 1003, status: 422, title: "URI parameters is invalid", detail: "URI parameters should be a block hash or a block height", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class BlockNotFoundError < Error
        def initialize
          super code: 1004, status: 404, title: "Block Not Found", detail: "No block records found by given block hash or number", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class CkbTransactionTxHashInvalidError < Error
        def initialize
          super code: 1005, status: 422, title: "URI parameters is invalid", detail: "URI parameters should be a transaction hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class CkbTransactionNotFoundError < Error
        def initialize
          super code: 1006, status: 404, title: "Transaction Not Found", detail: "No transaction records found by given transaction hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class PageParamError < Error
        def initialize
          super code: 1007, status: 400, title: "Page Param Invalid", detail: "Params page should be a integer", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class PageSizeParamError < Error
        def initialize
          super code: 1008, status: 400, title: "Page Size Param Invalid", detail: "Params page size should be a integer", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class AddressHashInvalidError < Error
        def initialize
          super code: 1009, status: 422, title: "URI parameters is invalid", detail: "URI parameters should be a address hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class AddressTransactionsNotFoundError < Error
        def initialize
          super code: 1010, status: 404, title: "Address Transactions Not Found", detail: "No transaction records found by given address hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class BlockHashInvalidError < Error
        def initialize
          super code: 1011, status: 422, title: "URI parameters is invalid", detail: "URI parameters should be a block hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end

      class BlockTransactionsNotFoundError < Error
        def initialize
          super code: 1012, status: 404, title: "Block Transactions Not Found", detail: "No transaction records found by given address hash", href: "https://github.com/nervosnetwork/ckb-explorer"
        end
      end
    end
  end
end
