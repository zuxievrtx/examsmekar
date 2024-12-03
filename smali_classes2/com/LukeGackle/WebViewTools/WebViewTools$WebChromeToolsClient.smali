.class Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/LukeGackle/WebViewTools/WebViewTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChromeToolsClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;


# direct methods
.method private constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/LukeGackle/WebViewTools/WebViewTools;Lcom/LukeGackle/WebViewTools/WebViewTools$1;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    .line 559
    :try_start_0
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :catch_1
    :try_start_2
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-virtual {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnPopupDismissed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 483
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    new-instance p2, Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p3}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$600(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$502(Lcom/LukeGackle/WebViewTools/WebViewTools;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 484
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 485
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 486
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p3, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;

    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;Lcom/LukeGackle/WebViewTools/WebViewTools$1;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 487
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p3, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-direct {p3, v0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 488
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 489
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 490
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 491
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$700(Lcom/LukeGackle/WebViewTools/WebViewTools;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$900(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "CLOSE"

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "<"

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$802(Lcom/LukeGackle/WebViewTools/WebViewTools;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 501
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;

    invoke-direct {p2, p0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient$1;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 530
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 531
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p1}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x20008

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 533
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 534
    invoke-virtual {p1, p3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 535
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 536
    iget-object p2, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 539
    :cond_0
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 540
    iget-object p2, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 541
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return p3

    .line 547
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-static {v0}, Lcom/LukeGackle/WebViewTools/WebViewTools;->access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 471
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;->this$0:Lcom/LukeGackle/WebViewTools/WebViewTools;

    invoke-virtual {p1, p2}, Lcom/LukeGackle/WebViewTools/WebViewTools;->OnProgressChanged(I)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method
