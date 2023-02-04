module StylesHelper
  def header(content, style: :h1)
    tag.p content, class: heading_classes.render(style: style)
  end

  def heading_classes
    class_variants("text-gray-900",
      variants: {
        style: {
          h1: "text-3xl font-semibold mb-6"
        },
      },
      defaults: {
        style: :h1,
      }
    )
  end

  def button_classes
    class_variants("py-2 px-4 rounded-md font-medium inline-flex items-center cursor-pointer",
      variants: {
        style: {
          secondary: "bg-white text-gray-600 border border-gray-200 hover:border-gray-500",
          primary: "bg-blue-500 hover:bg-opacity-90 text-white"
        },
        fullwidth: "w-full justify-center",
        nowrap: "whitespace-nowrap"
      },
      defaults: {
        style: :primary,
      }
    )
  end

  def label_classes
    class_variants("block text-sm font-medium text-gray-700")
  end

  def input_classes
    class_variants("appearance-none block w-full px-3 py-2 border-2 border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-200 focus:border-blue-200 sm:text-sm")
  end

  def hint_classes
    class_variants("mt-2 text-sm text-gray-500")
  end
end
