import SwiftUI

struct ContentView: View {
    @State private var titleInput = ""
    @State private var contentInput = ""
    var body: some View {
        VStack {
            Text("你好世界")
            Text("这是新添加的文本")
            Text("这是一段非常非常长的文本，用来测试当一行空间不够占的时候，它会自动换行继续显示。")
            Text("你好世界")
            TextField("单行输入", text: $titleInput)
            TextEditor(text: $contentInput)
            Text("单行：$titleInput)")
            Text("多行：$contentInput)") 
        }
    }
}

/*
import SwiftUI

struct ContentView: View {
    @State private var titleInput = ""
    @State private var contentInput = ""
    
    var body: some View {
        VStack {
            Text("你好世界")
            Text("这是新添加的文本")
            Text("这是一段非常非常长的文本，用来测试当一行空间不够占的时候，它会自动换行继续显示。")
            
            // 单行输入框
            TextField("单行输入", text: $titleInput)
                .textFieldStyle(.roundedBorder) // 增加边框样式更容易看清输入框位置
                .padding(.horizontal)
            
            // 修复点2：TextEditor 不支持占位符参数，直接传入 text 绑定即可
            TextEditor(text: $contentInput)
                .frame(height: 100) // 给多行输入框一个固定高度
                .border(Color.gray) // 增加边框方便观察
                .padding(.horizontal)
            
            // 修复点3 & 4：补全字符串插值的反斜杠 \ ，并修正错误的右括号
            Text("单行：$titleInput)")
            Text("多行：$contentInput)")
        }
        .padding() // 为整体视图增加内边距
    }
}
*/