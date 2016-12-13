require "administrate/base_dashboard"

class StepDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    title: Field::String,
    step_type: Field::SelectBasic.with_options({
      choices: ['Run', 'Swim', 'Cycle', 'Rest', 'Recover']
    }),
    category: Field::BelongsTo,
    user: Field::BelongsTo,
    quantity: Field::String,
    description: Field::Text,
    parent_id: Field::Number,
    duration: Field::DateTime,
    speed: Field::Number,
    effort: Field::SelectBasic.with_options({
      choices: ['Z1', 'Z2', 'Z3', 'Z4', 'Z5', 'Z6']
    }),
    notes: Field::Text
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :step_type,
    :quantity,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :category,
    :user,
    :step_type,
    :quantity,
    :description,
    :parent_id,
    :duration,
    :speed,
    :effort,
    :notes
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :step_type,
    :user,
    :category,
    :quantity,
    :description,
    :parent_id,
    :duration,
    :speed,
    :effort,
    :notes,
  ].freeze

  # Overwrite this method to customize how steps are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(step)
  #   "Step ##{step.id}"
  # end
end
