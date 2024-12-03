.class public Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 67
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lyt/DeepHost/BannerView/libs/volley/Response;->error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;->postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->markDelivered()V

    const-string v0, "post-response"

    .line 61
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
