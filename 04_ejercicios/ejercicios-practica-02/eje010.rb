module Countable

    module ClassMethods
        def count_invocations_of(method_name)
            alias_method "#orig_#{method_name}".to_sym, method_name
            define_method(method_name) do
                invocations_count[method_name] += 1
                send "#orig_#{method_name}".to_sym
            end
        end
    end

    def self.included(base)
        base.extend(ClassMethods)
    end

    def invocations_count
        @invocations_count ||= Hash.new(0)
    end

    def invoked?(method_name)
        invocations_count.has_key?(method_name)
    end

    def invoked_times(method_name)
        invocations_count[method_name]
    end

    def hi:
        puts "hi"
    end

    def bye:
        puts "bye"
    end

    invocations_count :bye
end