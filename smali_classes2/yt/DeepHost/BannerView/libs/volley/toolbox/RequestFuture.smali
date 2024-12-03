.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lyt/DeepHost/BannerView/libs/volley/Response$Listener;
.implements Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
        "TT;>;",
        "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

.field private mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResultReceived:Z

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    if-nez v0, :cond_5

    .line 108
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 113
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 119
    :goto_1
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    sub-long v0, v2, v0

    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_1

    .line 125
    :cond_2
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    if-nez p1, :cond_4

    .line 129
    iget-boolean p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 130
    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 126
    :cond_4
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 105
    :cond_5
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static newFuture()Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture<",
            "TE;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;

    invoke-direct {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 76
    monitor-exit p0

    return v0

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 81
    monitor-exit p0

    return p1

    .line 83
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/Request;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 0

    monitor-enter p0

    .line 158
    :try_start_0
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mException:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 151
    :try_start_0
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 152
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/RequestFuture;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    return-void
.end method
