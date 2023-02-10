class ActivityService
  def self.tags_per_language(locale)
    if locale == 'en'
      Activity::TAGS.values_at(* Activity::TAGS.each_index.select { |i| i.odd? })
    else
      Activity::TAGS.values_at(* Activity::TAGS.each_index.select { |i| i.even? })
    end
  end

  def self.activities_with_tag(tag)
    tag.present? ? Activity.tagged_with(tag) : Activity.all
  end
end
