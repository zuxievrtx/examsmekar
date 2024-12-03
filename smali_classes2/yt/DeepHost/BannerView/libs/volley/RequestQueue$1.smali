.class Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;Ljava/lang/Object;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lyt/DeepHost/BannerView/libs/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
