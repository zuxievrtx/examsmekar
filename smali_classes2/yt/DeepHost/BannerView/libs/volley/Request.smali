.class public abstract Lyt/DeepHost/BannerView/libs/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/Request$Priority;,
        Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;,
        Lyt/DeepHost/BannerView/libs/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lyt/DeepHost/BannerView/libs/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;

.field private final mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;

.field private mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mShouldRetryServerErrors:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldCache:Z

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCanceled:Z

    .line 106
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mResponseDelivered:Z

    .line 110
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldRetryServerErrors:Z

    .line 120
    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    .line 148
    iput p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mMethod:I

    .line 149
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mUrl:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mErrorListener:Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;

    .line 151
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/DefaultRetryPolicy;

    invoke-direct {p1}, Lyt/DeepHost/BannerView/libs/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->setRetryPolicy(Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 153
    invoke-static {p2}, Lyt/DeepHost/BannerView/libs/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mDefaultTrafficStatsTag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 138
    invoke-direct {p0, v0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/Request;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lyt/DeepHost/BannerView/libs/volley/Request;)Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;
    .locals 0

    .line 40
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 486
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 1

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 3

    .line 220
    sget-boolean v0, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 345
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 346
    :try_start_0
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCanceled:Z

    const/4 v1, 0x0

    .line 347
    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mErrorListener:Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->compareTo(Lyt/DeepHost/BannerView/libs/volley/Request;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lyt/DeepHost/BannerView/libs/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    move-result-object v0

    .line 677
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lyt/DeepHost/BannerView/libs/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public deliverError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mErrorListener:Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 625
    invoke-interface {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;->onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 623
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 4

    .line 231
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->finish(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    .line 234
    :cond_0
    sget-boolean v0, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 239
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 240
    new-instance v3, Lyt/DeepHost/BannerView/libs/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 251
    :cond_1
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 252
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mEventLog:Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;
    .locals 1

    .line 325
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .line 298
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getMethod()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getErrorListener()Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;
    .locals 2

    .line 184
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mErrorListener:Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .line 365
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 158
    iget v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
    .locals 1

    .line 548
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->NORMAL:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;
    .locals 1

    .line 562
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRetryPolicy:Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .line 285
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mSequence:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 557
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getRetryPolicy()Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .line 191
    iget v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

    .line 577
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-boolean v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mResponseDelivered:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 353
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-boolean v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markDelivered()V
    .locals 2

    .line 570
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 571
    :try_start_0
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mResponseDelivered:Z

    .line 572
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyListenerResponseNotUsable()V
    .locals 2

    .line 662
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestCompleteListener:Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;

    .line 664
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 666
    invoke-interface {v1, p0}, Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;->onNoUsableResponseReceived(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 664
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyListenerResponseReceived(Lyt/DeepHost/BannerView/libs/volley/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestCompleteListener:Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;

    .line 650
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 652
    invoke-interface {v1, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;->onResponseReceived(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 650
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected parseNetworkError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method sendEvent(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->sendRequestEvent(Lyt/DeepHost/BannerView/libs/volley/Request;I)V

    :cond_0
    return-void
.end method

.method public setCacheEntry(Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mCacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    return-object p0
.end method

.method setNetworkRequestCompleteListener(Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestCompleteListener:Lyt/DeepHost/BannerView/libs/volley/Request$NetworkRequestCompleteListener;

    .line 637
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRequestQueue(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/RequestQueue;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRequestQueue:Lyt/DeepHost/BannerView/libs/volley/RequestQueue;

    return-object p0
.end method

.method public setRetryPolicy(Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mRetryPolicy:Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;

    return-object p0
.end method

.method public final setSequence(I)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 509
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldCache:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 524
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldRetryServerErrors:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mShouldRetryServerErrors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPriority()Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
