.class public Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

.field private final mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

.field private final mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lyt/DeepHost/BannerView/libs/volley/Network;Lyt/DeepHost/BannerView/libs/volley/Cache;Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;>;",
            "Lyt/DeepHost/BannerView/libs/volley/Network;",
            "Lyt/DeepHost/BannerView/libs/volley/Cache;",
            "Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mQuit:Z

    .line 63
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

    .line 65
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    .line 66
    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/volley/Request;->parseNetworkError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    move-result-object p2

    .line 176
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postError(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    return-void
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 112
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->processRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 118
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "network-queue-take"

    .line 120
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    .line 125
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->finish(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_0
    .catch Lyt/DeepHost/BannerView/libs/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->addTrafficStatsTag(Lyt/DeepHost/BannerView/libs/volley/Request;)V

    .line 133
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mNetwork:Lyt/DeepHost/BannerView/libs/volley/Network;

    invoke-interface {v3, p1}, Lyt/DeepHost/BannerView/libs/volley/Network;->performRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 134
    invoke-virtual {p1, v4}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 138
    iget-boolean v4, v3, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->notModified:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    .line 139
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->finish(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_1
    .catch Lyt/DeepHost/BannerView/libs/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    .line 145
    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 146
    invoke-virtual {p1, v4}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lyt/DeepHost/BannerView/libs/volley/Response;->cacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mCache:Lyt/DeepHost/BannerView/libs/volley/Cache;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lyt/DeepHost/BannerView/libs/volley/Response;->cacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lyt/DeepHost/BannerView/libs/volley/Cache;->put(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)V

    const-string v4, "network-cache-written"

    .line 152
    invoke-virtual {p1, v4}, Lyt/DeepHost/BannerView/libs/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 156
    :cond_2
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->markDelivered()V

    .line 157
    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-interface {v4, p1, v3}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postResponse(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/Response;)V

    .line 158
    invoke-virtual {p1, v3}, Lyt/DeepHost/BannerView/libs/volley/Request;->notifyListenerResponseReceived(Lyt/DeepHost/BannerView/libs/volley/Response;)V
    :try_end_2
    .catch Lyt/DeepHost/BannerView/libs/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 164
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v4, Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    invoke-direct {v4, v3}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 167
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mDelivery:Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;

    invoke-interface {v0, p1, v4}, Lyt/DeepHost/BannerView/libs/volley/ResponseDelivery;->postError(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    .line 168
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 161
    invoke-direct {p0, p1, v3}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    .line 162
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :goto_0
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request;->sendEvent(I)V

    .line 171
    throw v0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mQuit:Z

    .line 75
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 88
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 98
    invoke-static {v1, v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
