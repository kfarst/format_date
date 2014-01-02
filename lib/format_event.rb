require "format_event/version"

module Locomotive
  module Liquid
    module Tags
      module FormatEvent
        class Date < ::Liquid::Tag
          def initialize(tag_name, date)
            @date = date
          end

          def render(context)
            date = @date.split(' ').first
            date.gsub('-', '') if date
          end
        end

        class Time < ::Liquid::Tag
          def intialize(tag_name, datetime)
            @datetime = datetime
          end

          def render(context)
            time = @datetime.split(' ')[1]
            time.gsub(':', '.') if time
          end
        end
      end

      ::Liquid::Template.register_tag('format_event_date', FormatEvent::Date)
      ::Liquid::Template.register_tag('format_event_time', FormatEvent::Time)
    end
  end
end
