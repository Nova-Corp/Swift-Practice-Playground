import Foundation

@propertyWrapper
struct UserDefault<ValueType> {
  let key: String
  let defaultValue: ValueType
  init(key: String, defaultValue: ValueType) {
    self.key = key
    self.defaultValue = defaultValue
  }
  var wrappedValue: ValueType {
    get { (UserDefaults.standard.value(forKey: key) as? ValueType) ?? defaultValue }
    set { UserDefaults.standard.set(newValue, forKey: key) }
  }
}
