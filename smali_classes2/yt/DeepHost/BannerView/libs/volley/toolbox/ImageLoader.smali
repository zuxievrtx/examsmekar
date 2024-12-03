.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;,
        Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;,
        Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# static fields
.field public static bitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 42
    iput v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    .line 81
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mCache:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$602(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 502
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$5;

    invoke-direct {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$5;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 528
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static getBitmapListener(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    .line 88
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#H"

    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#S"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageListener(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    .line 113
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;

    invoke-direct {v0, p3, p1, p0, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, v0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;II)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;II)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;
    .locals 6

    .line 206
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    .line 233
    invoke-static {}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 235
    invoke-static {v8, v9, v10, v11}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v12

    .line 238
    iget-object v0, v6, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mCache:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, v12}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 241
    new-instance v9, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)V

    .line 244
    invoke-interface {v7, v9, v13}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object v9

    .line 249
    :cond_0
    new-instance v14, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)V

    .line 253
    invoke-interface {v7, v14, v13}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 256
    iget-object v0, v6, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-nez v0, :cond_1

    .line 258
    iget-object v0, v6, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    :cond_1
    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0, v14}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V

    return-object v14

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v12

    .line 269
    invoke-virtual/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/Request;

    move-result-object v0

    .line 271
    iget-object v1, v6, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->add(Lyt/DeepHost/BannerView/libs/volley/Request;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 272
    iget-object v1, v6, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v2, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v2, v0, v14}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 1

    .line 165
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result p1

    return p1
.end method

.method public isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 0

    .line 181
    invoke-static {}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 183
    invoke-static {p1, p2, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mCache:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v8, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;

    new-instance v2, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$3;

    invoke-direct {v2, p0, p5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$3;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;

    invoke-direct {v7, p0, p5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$4;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-object v8
.end method

.method protected onGetImageError(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    .line 349
    invoke-direct {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mCache:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    .line 327
    invoke-static {v0, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->access$002(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 330
    invoke-direct {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    .line 309
    iput p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    return-void
.end method
