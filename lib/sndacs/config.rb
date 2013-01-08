#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

module Sndacs

  class Config

    class << self
      
      DEFAULT_HOST = 'storage.grandcloud.cn'
      DEFAULT_CONTENT_HOST = 'storage.sdcloud.cn'

      attr_writer :access_key_id, :secret_access_key, :host, :content_host, :timeout, :chunk_size

      attr_accessor :proxy, :debug, :use_ssl

      def access_key_id
        @access_key_id || ''
      end

      def secret_access_key
        @secret_access_key || ''
      end

      def host
        @host || DEFAULT_HOST
      end

      def content_host
        @content_host || DEFAULT_CONTENT_HOST
      end

      def timeout
        @timeout || 60
      end

      def chunk_size
        @chunk_size || 1048576
      end

      # Sndacs::Config.init({ :access_key_id => '' })
      def init(options = {})
        options.each{ |k,v| send "#{k}=", v }
      end

    end

  end

end
