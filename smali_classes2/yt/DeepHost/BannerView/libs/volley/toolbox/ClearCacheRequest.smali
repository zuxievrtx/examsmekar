.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;
.super Lyt/DeepHost/BannerView/libs/volley/Request;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyt/DeepHost/BannerView/libs/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, v0, v1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    .line 40
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    .line 41
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
    .locals 1

    .line 57
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->IMMEDIATE:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    invoke-interface {v0}, Lyt/DeepHost/BannerView/libs/volley/Cache;->clear()V

    .line 48
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
