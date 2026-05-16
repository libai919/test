import SwiftUI

@main
struct MyAppTest: App {
    /*
    init() {
    	createZhuanShuFolder()
    }
    */
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

/*
func createZhuanShuFolder() {
    let fileManager = FileManager.default
    
    do {
        // 1. 获取 Documents 目录的路径
        let documentsURL = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        
        // 2. 拼接你的专属文件夹名称（例如 "MyApp专属文件夹"）
        let customFolderURL = documentsURL.appendingPathComponent("MyApp专属文件夹")
        
        // 3. 检查文件夹是否存在，如果不存在则创建
        if !fileManager.fileExists(atPath: customFolderURL.path) {
            try fileManager.createDirectory(at: customFolderURL, withIntermediateDirectories: true, attributes: nil)
            print("✅ 专属文件夹创建成功：$customFolderURL.path)")
        } else {
            print("ℹ️ 专属文件夹已存在") 
        }
    } catch {
        print("❌ 创建文件夹失败：$error)")
    }

}
*/
