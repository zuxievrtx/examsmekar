.class Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    return-void
.end method
