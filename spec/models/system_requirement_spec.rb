require 'rails_helper'

RSpec.describe SystemRequirement, type: :model do
  it { is_expected.to  validate_presence_of(:name) }
  it { is_expected.to  validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to  validate_presence_of(:operational_system) }
  it { is_expected.to  validate_presence_of(:storage) }
  it { is_expected.to  validate_presence_of(:processor) }
  it { is_expected.to  validate_presence_of(:memory) }
  it { is_expected.to  validate_presence_of(:video_board) }

  #associando SYSTEM_REQUIREMENT a varios GAMES, 
  #e apresenta erro caso haja tentativa de apagar um SISTEM_REQUIREMENT atrelado a um GAME
  it { is_expected.to  have_many(:games).dependent(:restrict_with_error) }
end
