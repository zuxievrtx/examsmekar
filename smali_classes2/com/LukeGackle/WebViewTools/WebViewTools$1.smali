.class Lcom/LukeGackle/WebViewTools/WebViewTools$1;
.super Ljava/lang/Object;
.source "WebViewTools.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/LukeGackle/WebViewTools/WebViewTools;->RunJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;


# direct methods
.method constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$1;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/LukeGackle/WebViewTools/WebViewTools$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$1;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-virtual {v0, p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnJavaScriptOutput(Ljava/lang/String;)V

    return-void
.end method
