.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 379
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 380
    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 381
    iput-object p5, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$400(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;
    .locals 0

    .line 354
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method static synthetic access$502(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 354
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .line 391
    invoke-static {}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 393
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 408
    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 419
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
