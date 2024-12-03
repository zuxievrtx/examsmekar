.class Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;
.super Ljava/lang/Object;
.source "WebViewTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;


# direct methods
.method constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;->this$2:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 508
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;->this$2:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-virtual {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnPopupDismissed()V

    .line 509
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;->this$2:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 510
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;->this$2:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
