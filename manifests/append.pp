# @summary
#
# Append an item of any type to a collection.
#
# @example
#   collections::append { 'User foo is an admin':
#     target => 'users::admin-users',
#     item   => {
#       username => 'foo',
#       uid      => 1001,
#     },
#   }
#
# @param [String[1]] target
#   The target collection, created by `collection::create`
#
# @param [Any] item
#   The item to be added to the target collection
#
define collections::append (
  String[1] $target,
  Any $item
) {
  Collections::Iterator <| title == $target |> {
    items +> [$item]
  }
}
