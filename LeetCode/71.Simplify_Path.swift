class Solution {
    func simplifyPath(_ path: String) -> String {
        let components = path.components(separatedBy: "/")
        var result: [String] = []
        for component in components {
            switch component {
            case "", ".":
                continue
            case "..":
                if !result.isEmpty {
                    result.removeLast()
                }
            default:
                result.append(component)
            }
        }

        return "/" + result.joined(separator: "/")
    }
}
