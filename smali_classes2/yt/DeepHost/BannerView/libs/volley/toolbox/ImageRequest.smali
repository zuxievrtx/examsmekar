.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;
.super Lyt/DeepHost/BannerView/libs/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyt/DeepHost/BannerView/libs/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_IMAGE_BACKOFF_MULT:F = 2.0f

.field public static final DEFAULT_IMAGE_MAX_RETRIES:I = 0x2

.field public static final DEFAULT_IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, p1, p7}, Lyt/DeepHost/BannerView/libs/volley/Request;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mLock:Ljava/lang/Object;

    .line 84
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/DefaultRetryPolicy;

    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->setRetryPolicy(Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 89
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 90
    iput-object p6, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    iput p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 92
    iput p4, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 93
    iput-object p5, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private doParse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->data:[B

    .line 197
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 199
    iget v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxWidth:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 201
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 204
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 207
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 210
    iget v6, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v7, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget-object v8, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 211
    invoke-static {v6, v7, v4, v5, v8}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 213
    iget v7, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v8, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget-object v9, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 214
    invoke-static {v7, v8, v5, v4, v9}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 218
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    invoke-static {v4, v5, v6, v7}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_1

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 229
    :cond_1
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 237
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/ParseError;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/ParseError;-><init>(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)V

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/Response;->error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    return-object p1

    .line 239
    :cond_3
    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/Response;->success(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method static findBestSampleSize(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 276
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 147
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 168
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 245
    invoke-super {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V

    .line 246
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 247
    :try_start_0
    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 256
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
    .locals 1

    .line 120
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->LOW:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 184
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->doParse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 188
    iget-object p1, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->data:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/ParseError;

    invoke-direct {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/Response;->error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 191
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
