class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    layout = Android::Widget::LinearLayout.new(self)
    layout.orientation = Android::Widget::LinearLayout::VERTICAL

    @label = Android::Widget::TextView.new(self)
    @label.text = 'Tap to start'
    @label.textSize = 80.0
    @label.gravity = Android::View::Gravity::CENTER_HORIZONTAL
    layout.addView(@label)

    @button = Android::Widget::Button.new(self)
    @button.text = 'Start'
    @button.onClickListener = self
    layout.addView(@button)

    self.contentView = layout
  end

  def onClick(view)
    puts "click"
  end
end
