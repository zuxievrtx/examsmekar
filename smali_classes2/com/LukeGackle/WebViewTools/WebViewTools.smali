.class public Lcom/LukeGackle/WebViewTools/WebViewTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "WebViewTools.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This extension provides a range of methods for changing the settings for a WebView component. For further documentation and updates check out <a href=\"http://thunkableblocks.blogspot.com/\">thunkableblocks.blogspot.com</a>"
    iconName = "https://1.bp.blogspot.com/-d-xyqbKFyAY/WSDvpMEG-tI/AAAAAAABYTk/I9gjYEgABZYxjwi2pzmlqbvQg6eMJhSeQCLcB/s1600/ExtensionsIcons.png"
    nonVisible = true
    version = 0x9
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;,
        Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;
    }
.end annotation


# static fields
.field public static final DEVELOPER:Ljava/lang/String; = "Luke Gackle"

.field private static final LOG_TAG:Ljava/lang/String; = "WebViewToolsExtension-9-Luke Gackle"

.field public static final VERSION:I = 0x9


# instance fields
.field private OutputHTML:Ljava/lang/String;

.field private OverrideURL:Ljava/lang/String;

.field private OverrideURLChange:Z

.field private activity:Landroid/app/Activity;

.field private builder:Landroid/app/AlertDialog;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;

.field private mWebviewPop:Landroid/webkit/WebView;

.field private settings:Landroid/webkit/WebSettings;

.field private useragentstringPopup:Ljava/lang/String;

.field private wctc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

.field private webview:Landroid/webkit/WebView;

.field private wvtc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 104
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 105
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 106
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->context:Landroid/content/Context;

    .line 107
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->activity:Landroid/app/Activity;

    .line 108
    new-instance p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;Lcom/LukeGackle/WebViewTools/WebViewTools$1;)V

    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->wvtc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;

    .line 109
    new-instance p1, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    invoke-direct {p1, p0, v0}, Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;Lcom/LukeGackle/WebViewTools/WebViewTools$1;)V

    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->wctc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->OverrideURLChange:Z

    return-void
.end method

.method static synthetic access$200(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/LukeGackle/WebViewTools/WebViewTools;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->OverrideURLChange:Z

    return p0
.end method

.method static synthetic access$400(Lcom/LukeGackle/WebViewTools/WebViewTools;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->OverrideURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/webkit/WebView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->mWebviewPop:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/LukeGackle/WebViewTools/WebViewTools;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->mWebviewPop:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/LukeGackle/WebViewTools/WebViewTools;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->useragentstringPopup:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/AlertDialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->builder:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/LukeGackle/WebViewTools/WebViewTools;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->builder:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/LukeGackle/WebViewTools/WebViewTools;)Landroid/app/Activity;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public DismissPopup()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "force destroy popup"
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->builder:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->mWebviewPop:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 355
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->builder:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public GetBuiltInZoomControls()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether the builtin zoom mechanisms are being used, includes pinch to zoom gestures."
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public GetDatabaseEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether the database storage API is enabled."
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public GetDomStorageEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether the WebView has access to the device file system."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public GetJavaScriptEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether Javascript is enabled in the current WebView."
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public GetMediaPlaybackRequiresUserGesture()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether media playback requires user gesture in the current WebView."
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public GetSourceHTML()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Requests the raw HTML source code for the loaded page. Only works on Android KitKat and newer. Use the GotHTMLSource event to retrieve the HTML source."
    .end annotation

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/LukeGackle/WebViewTools/WebViewTools$2;

    invoke-direct {v1, p0}, Lcom/LukeGackle/WebViewTools/WebViewTools$2;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V

    const-string v2, "document.getElementsByTagName(\'html\')[0].innerHTML;"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public GetTextZoom()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the text zoom of the page in percent."
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0

    return v0
.end method

.method public GetUserAgentString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the current useragent string being used by the WebView."
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GotHTMLSource(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the HTML Source of a website. This event will only fire on Android KitKat or newer."
    .end annotation

    const-string v0, "UTF8"

    const-string v1, ""

    .line 252
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 253
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v3, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v4, "GotHTMLSource"

    if-eq v3, v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 259
    invoke-static {p0, v4, p1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 262
    invoke-static {p0, v4, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public OnJavaScriptOutput(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the output of the executed JavaScript. This event will only fire on Android KitKat or newer."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnJavaScriptOutput"

    .line 202
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnPageFinished(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires once the page has finished loading."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnPageFinished"

    .line 361
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnPopupBackPressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires when back button pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnPopupBackPressed"

    .line 376
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnPopupDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires when Popup Dismissed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnPopupDismissed"

    .line 381
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires when Progress changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnReceivedError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires when an error occurs loading page, note that API 23 and above this will trigger for onpage elements .e.g iframes, refer to Android documentation at http://developer.android.com/reference/android/webkit/WebViewClient.html."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 366
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "OnReceivedError"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnReceivedHttpError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Fires when an error occurs loading page, note that API 23 and above this will trigger for onpage elements .e.g iframes, refer to Android documentation at http://developer.android.com/reference/android/webkit/WebViewClient.html."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 371
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "OnReceivedHttpError"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveWebViewer(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "RemoveWebViewer removes a previous WebViewer from the internal store of this extension. Using this method will also stop the \"OnPageFinished\" event firing for the given WebViewer."
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 141
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    .line 143
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    goto :goto_0

    :cond_0
    const-string p1, "RemoveWebViewer"

    const-string v0, "Does not Match"

    .line 146
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public RunJavaScript(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes the given JavaScript in the current web viewer."
    .end annotation

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/LukeGackle/WebViewTools/WebViewTools$1;

    invoke-direct {v1, p0}, Lcom/LukeGackle/WebViewTools/WebViewTools$1;-><init>(Lcom/LukeGackle/WebViewTools/WebViewTools;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SetAllowFileAccess(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables or disables file access within WebView."
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method public SetAppCacheEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables the AppCache API and sets the AppCache path to the apps cache directory."
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 292
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public SetBlockNetworkLoads(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether WebView should block resources from network locations (http and https)."
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    return-void
.end method

.method public SetBuiltInZoomControls(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether the WebView should use it\'s builtin zoom mechanisms. This enables or disables zoom gestures such as pinch to zoom."
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public SetCacheMode(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the cachemode the WebView should use, refer to Googles WebSettings documentation for further information on the different cache modes and their constant values: https://developer.android.com/reference/android/webkit/WebSettings.html#LOAD_DEFAULT."
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public SetDatabaseEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables or disables access to the database storage API in the current WebView."
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method

.method public SetDesktopMode(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the WebViewer to request Desktop Site if true, else requests Mobile site."
    .end annotation

    const-string v0, "Android"

    const-string v1, "diordnA"

    const-string v2, "Mobile"

    const-string v3, "eliboM"

    if-eqz p1, :cond_0

    .line 223
    iget-object v4, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 231
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 232
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 233
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public SetGeolocationEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether geolocation is enabled in the WebView."
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public SetInitialScale(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Can be used to set the initial scale if the webpage doesnt make use of a viewport meta tag, scale is a percentage e.g for 100% enter 100."
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public SetJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether javascript can open windows automatically via window.open() javascript methods."
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public SetJavaScriptEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether javascript is enabled in the WebView."
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public SetLoadWithOverviewMode(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether the WebView loads pages in overview mode, that is, zooms out the content to fit on screen by width."
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public SetMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether media playback requires user gesture within WebView."
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method public SetOverrideURLChange(ZLjava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether the URL should be checked prior to loading, enabling this will stop the a page from loading if it does not contain the specified URL in the destination URL."
    .end annotation

    .line 278
    iput-object p2, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->OverrideURL:Ljava/lang/String;

    .line 279
    iput-boolean p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->OverrideURLChange:Z

    return-void
.end method

.method public SetSupportMultipleWindows(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether WebView should support multiple windows."
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public SetTextZoom(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the text zoom of the page in percent."
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public SetUseWideViewPort(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets whether the current WebView should enable support for the \"viewport\" HTML meta tag or should use a wide viewport. If set to true and the page contains a Viewport meta tag then the Viewport meta tag is used."
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public SetUserAgentString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the useragent string for the WebViewer to use."
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->useragentstringPopup:Ljava/lang/String;

    return-void
.end method

.method public SetWebViewer(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SetWebViewer takes a WebViewer and internally stores the object, enabling you to change a variety of settings on the given WebViewer."
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    .line 120
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->settings:Landroid/webkit/WebSettings;

    .line 129
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->wvtc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebViewToolsClient;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 130
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->wctc:Lcom/LukeGackle/WebViewTools/WebViewTools$WebChromeToolsClient;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    iget-object p1, p0, Lcom/LukeGackle/WebViewTools/WebViewTools;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    return-void
.end method
