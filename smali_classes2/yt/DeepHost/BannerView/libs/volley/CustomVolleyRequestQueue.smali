.class public Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;
.super Ljava/lang/Object;
.source "CustomVolleyRequestQueue.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;


# instance fields
.field private mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

.field private mRequestQuee:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sput-object p1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getRequestQuee()Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mRequestQuee:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    .line 28
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue$1;

    invoke-direct {v1, p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;)V

    invoke-direct {v0, p1, v1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;-><init>(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;
    .locals 2

    const-class v0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mInstance:Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    invoke-direct {v1, p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mInstance:Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    .line 73
    :cond_0
    sget-object p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mInstance:Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getImageLoader()Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;
    .locals 1

    .line 66
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getRequestQuee()Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
    .locals 3

    .line 46
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mRequestQuee:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;

    sget-object v1, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-direct {v0, v1, v2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 51
    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;

    new-instance v2, Lyt/DeepHost/BannerView/libs/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v1, v2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BasicNetwork;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;)V

    .line 52
    new-instance v2, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    invoke-direct {v2, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;-><init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;)V

    iput-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mRequestQuee:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    .line 54
    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->start()V

    .line 58
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->mRequestQuee:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    return-object v0
.end method
