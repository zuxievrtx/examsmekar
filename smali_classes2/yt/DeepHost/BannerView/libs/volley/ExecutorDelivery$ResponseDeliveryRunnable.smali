.class Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

.field private final mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 81
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

    .line 82
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->finish(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

    iget-object v1, v1, Lyt/DeepHost/BannerView/libs/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

    iget-object v1, v1, Lyt/DeepHost/BannerView/libs/volley/Response;->error:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->deliverError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lyt/DeepHost/BannerView/libs/volley/Response;

    iget-boolean v0, v0, Lyt/DeepHost/BannerView/libs/volley/Response;->intermediate:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->finish(Ljava/lang/String;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
