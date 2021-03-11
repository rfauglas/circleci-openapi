=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module CircleciOpenapi
  # Metrics relating to the duration of runs for a workflow.
  class InlineResponse2002MetricsDurationMetrics
    # The minimum duration, in seconds, among a group of runs.
    attr_accessor :min

    # The mean duration, in seconds, among a group of runs.
    attr_accessor :mean

    # The median duration, in seconds, among a group of runs.
    attr_accessor :median

    # The 95th percentile duration, in seconds, among a group of runs.
    attr_accessor :p95

    # The max duration, in seconds, among a group of runs.
    attr_accessor :max

    # The standard deviation, in seconds, among a group of runs.
    attr_accessor :standard_deviation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'min' => :'min',
        :'mean' => :'mean',
        :'median' => :'median',
        :'p95' => :'p95',
        :'max' => :'max',
        :'standard_deviation' => :'standard_deviation'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'min' => :'Integer',
        :'mean' => :'Integer',
        :'median' => :'Integer',
        :'p95' => :'Integer',
        :'max' => :'Integer',
        :'standard_deviation' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircleciOpenapi::InlineResponse2002MetricsDurationMetrics` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircleciOpenapi::InlineResponse2002MetricsDurationMetrics`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'min')
        self.min = attributes[:'min']
      end

      if attributes.key?(:'mean')
        self.mean = attributes[:'mean']
      end

      if attributes.key?(:'median')
        self.median = attributes[:'median']
      end

      if attributes.key?(:'p95')
        self.p95 = attributes[:'p95']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'standard_deviation')
        self.standard_deviation = attributes[:'standard_deviation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @min.nil?
        invalid_properties.push('invalid value for "min", min cannot be nil.')
      end

      if @min < 0
        invalid_properties.push('invalid value for "min", must be greater than or equal to 0.')
      end

      if @mean.nil?
        invalid_properties.push('invalid value for "mean", mean cannot be nil.')
      end

      if @mean < 0
        invalid_properties.push('invalid value for "mean", must be greater than or equal to 0.')
      end

      if @median.nil?
        invalid_properties.push('invalid value for "median", median cannot be nil.')
      end

      if @median < 0
        invalid_properties.push('invalid value for "median", must be greater than or equal to 0.')
      end

      if @p95.nil?
        invalid_properties.push('invalid value for "p95", p95 cannot be nil.')
      end

      if @p95 < 0
        invalid_properties.push('invalid value for "p95", must be greater than or equal to 0.')
      end

      if @max.nil?
        invalid_properties.push('invalid value for "max", max cannot be nil.')
      end

      if @max < 0
        invalid_properties.push('invalid value for "max", must be greater than or equal to 0.')
      end

      if @standard_deviation.nil?
        invalid_properties.push('invalid value for "standard_deviation", standard_deviation cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @min.nil?
      return false if @min < 0
      return false if @mean.nil?
      return false if @mean < 0
      return false if @median.nil?
      return false if @median < 0
      return false if @p95.nil?
      return false if @p95 < 0
      return false if @max.nil?
      return false if @max < 0
      return false if @standard_deviation.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] min Value to be assigned
    def min=(min)
      if min.nil?
        fail ArgumentError, 'min cannot be nil'
      end

      if min < 0
        fail ArgumentError, 'invalid value for "min", must be greater than or equal to 0.'
      end

      @min = min
    end

    # Custom attribute writer method with validation
    # @param [Object] mean Value to be assigned
    def mean=(mean)
      if mean.nil?
        fail ArgumentError, 'mean cannot be nil'
      end

      if mean < 0
        fail ArgumentError, 'invalid value for "mean", must be greater than or equal to 0.'
      end

      @mean = mean
    end

    # Custom attribute writer method with validation
    # @param [Object] median Value to be assigned
    def median=(median)
      if median.nil?
        fail ArgumentError, 'median cannot be nil'
      end

      if median < 0
        fail ArgumentError, 'invalid value for "median", must be greater than or equal to 0.'
      end

      @median = median
    end

    # Custom attribute writer method with validation
    # @param [Object] p95 Value to be assigned
    def p95=(p95)
      if p95.nil?
        fail ArgumentError, 'p95 cannot be nil'
      end

      if p95 < 0
        fail ArgumentError, 'invalid value for "p95", must be greater than or equal to 0.'
      end

      @p95 = p95
    end

    # Custom attribute writer method with validation
    # @param [Object] max Value to be assigned
    def max=(max)
      if max.nil?
        fail ArgumentError, 'max cannot be nil'
      end

      if max < 0
        fail ArgumentError, 'invalid value for "max", must be greater than or equal to 0.'
      end

      @max = max
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          min == o.min &&
          mean == o.mean &&
          median == o.median &&
          p95 == o.p95 &&
          max == o.max &&
          standard_deviation == o.standard_deviation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [min, mean, median, p95, max, standard_deviation].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CircleciOpenapi.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
