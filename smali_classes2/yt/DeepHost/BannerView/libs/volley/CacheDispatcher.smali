.class public Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private final mWaitingRequestManager:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;",
            "Lyt/DeepHost/BannerView/libs/volley/Cache;",
            "Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mQuit:Z

    .line 72
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 73
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 74
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    .line 75
    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    .line 76
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;

    invoke-direct {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;-><init>(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;)V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mWaitingRequestManager:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;

    return-void
.end method

.method static synthetic access$100(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 36
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;)Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;
    .locals 0

    .line 36
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    return-object p0
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 120
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->processRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 125
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    const/4 v1, 0x2

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "cache-discard-canceled"

    .line 131
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lyt/DeepHost/BannerView/libs/volley/Cache;->get(Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "cache-miss"

    .line 138
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mWaitingRequestManager:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;Lyt/DeepHost/BannerView/libs/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :cond_1
    invoke-virtual {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    .line 147
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "cache-hit-expired"

    .line 148
    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->setCacheEntry(Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 150
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mWaitingRequestManager:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;Lyt/DeepHost/BannerView/libs/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_3
    invoke-virtual {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    :cond_4
    :try_start_3
    const-string v3, "cache-hit"

    .line 157
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 158
    new-instance v3, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;

    iget-object v4, v2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->data:[B

    iget-object v5, v2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 159
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    .line 161
    invoke-virtual {p1, v4}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 165
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;)V

    goto :goto_0

    :cond_5
    const-string v4, "cache-hit-refresh-needed"

    .line 170
    invoke-virtual {p1, v4}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->setCacheEntry(Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 173
    iput-boolean v0, v3, Lyt/DeepHost/BannerView/libs/volley/Response;->intermediate:Z

    .line 175
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mWaitingRequestManager:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$WaitingRequestManager;Lyt/DeepHost/BannerView/libs/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 178
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    new-instance v2, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;Lyt/DeepHost/BannerView/libs/volley/Request;)V

    invoke-interface {v0, p1, v3, v2}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :cond_6
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :goto_0
    invoke-virtual {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    .line 200
    throw v0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mQuit:Z

    .line 85
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 90
    sget-boolean v0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 91
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    invoke-interface {v0}, Lyt/DeepHost/BannerView/libs/volley/Cache;->initialize()V

    .line 98
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 105
    invoke-static {v2, v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
