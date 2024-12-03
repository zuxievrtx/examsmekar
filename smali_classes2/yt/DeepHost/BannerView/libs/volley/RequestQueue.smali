.class public Lyt/DeepHost/BannerView/libs/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFilter;,
        Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;,
        Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEvent;,
        Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

.field private mCacheDispatcher:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

.field private final mDispatchers:[Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    .line 168
    invoke-direct {p0, p1, p2, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;-><init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;I)V
    .locals 3

    .line 154
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lyt/DeepHost/BannerView/libs/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 154
    invoke-direct {p0, p1, p2, p3, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;-><init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;ILyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/Network;ILyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 105
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 140
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    .line 141
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

    .line 142
    new-array p1, p3, [Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDispatchers:[Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    .line 143
    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lyt/DeepHost/BannerView/libs/volley/Request;)Lyt/DeepHost/BannerView/libs/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "TT;>;)",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 257
    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->setRequestQueue(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 258
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->setSequence(I)Lyt/DeepHost/BannerView/libs/volley/Request;

    const-string v0, "add-to-queue"

    .line 264
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->sendRequestEvent(Lyt/DeepHost/BannerView/libs/volley/Request;I)V

    .line 268
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 272
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 260
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addRequestEventListener(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addRequestFinishedListener(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 240
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->cancelAll(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFilter;)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelAll(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFilter;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 225
    invoke-interface {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFilter;->apply(Lyt/DeepHost/BannerView/libs/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V

    goto :goto_0

    .line 229
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method finish(Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    .line 287
    :try_start_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;

    .line 288
    invoke-interface {v2, p1}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    goto :goto_0

    .line 290
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 291
    invoke-virtual {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->sendRequestEvent(Lyt/DeepHost/BannerView/libs/volley/Request;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 290
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 285
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getCache()Lyt/DeepHost/BannerView/libs/volley/Cache;
    .locals 1

    .line 206
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 201
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestEventListener(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeRequestFinishedListener(Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method sendRequestEvent(Lyt/DeepHost/BannerView/libs/volley/Request;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;

    .line 298
    invoke-interface {v2, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue$RequestEventListener;->onRequestEvent(Lyt/DeepHost/BannerView/libs/volley/Request;I)V

    goto :goto_0

    .line 300
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 6

    .line 173
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->stop()V

    .line 175
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCacheDispatcher:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

    .line 176
    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDispatchers:[Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 180
    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    iget-object v5, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lyt/DeepHost/BannerView/libs/volley/Network;Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V

    .line 182
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDispatchers:[Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 183
    invoke-virtual {v1}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 189
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mCacheDispatcher:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->quit()V

    .line 192
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/RequestQueue;->mDispatchers:[Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v3}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->quit()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
