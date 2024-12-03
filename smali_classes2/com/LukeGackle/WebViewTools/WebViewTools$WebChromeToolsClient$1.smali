.class Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;
.super Ljava/lang/Object;
.source "WebViewTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;


# direct methods
.method constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 504
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 505
    new-instance v0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;

    invoke-direct {v0, p0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$1;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;->this$1:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object p1, p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 514
    new-instance v0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$2;

    invoke-direct {v0, p0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1$2;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
