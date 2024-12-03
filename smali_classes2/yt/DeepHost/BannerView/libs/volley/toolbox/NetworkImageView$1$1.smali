.class Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;

.field final synthetic val$response:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;->this$1:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;->val$response:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 279
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;->this$1:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;->val$response:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
