.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
    .locals 2

    const/4 v0, 0x0

    .line 117
    move-object v1, v0

    check-cast v1, Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;

    invoke-static {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method private static newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/Network;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 93
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley$1;

    invoke-direct {v0, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley$1;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$FileSupplier;)V

    invoke-direct {p0, v1, p1}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;-><init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;)V

    .line 106
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->start()V

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
    .locals 2

    if-nez p1, :cond_1

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    .line 46
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;

    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)V

    goto :goto_2

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "volley/0"

    .line 61
    :goto_0
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;

    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;

    .line 62
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p1

    invoke-direct {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;)V

    goto :goto_1

    .line 65
    :cond_1
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)V

    :goto_1
    move-object p1, v0

    .line 68
    :goto_2
    invoke-static {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/Network;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 84
    move-object v0, p1

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;

    invoke-static {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;)V

    invoke-static {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/Network;)Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method
