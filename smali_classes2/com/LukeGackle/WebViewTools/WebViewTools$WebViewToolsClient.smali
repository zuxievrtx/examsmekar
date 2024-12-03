.class Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/LukeGackle/WebViewTools/WebViewTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewToolsClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;


# direct methods
.method private constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools;Lcom/LukeGackle/WebViewTools/WebViewTools$1;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 394
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-virtual {p1, p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnPageFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 444
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnReceivedError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 455
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnReceivedHttpError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "onReceivedSslError"

    .line 433
    invoke-static {p1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 406
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$300(Lcom/LukeGackle/WebViewTools/WebViewTools;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$400(Lcom/LukeGackle/WebViewTools/WebViewTools;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 421
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
