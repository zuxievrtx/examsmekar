.class Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/banner/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

.field prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 280
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 281
    new-instance p1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->wrapper:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 304
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 305
    iput-object p1, v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 308
    :cond_0
    iput-object v0, p1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 309
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 310
    iput-object p0, p1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    throw p1
.end method

.method public remove()Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;
    .locals 2

    .line 285
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 290
    :cond_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    if-eqz v1, :cond_1

    .line 291
    iput-object v0, v1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->prev:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 294
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 298
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->wrapper:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 296
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;
    .locals 2

    .line 318
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 322
    iget-object v1, v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 323
    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->remove()Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 325
    :cond_0
    :try_start_1
    iget-object v0, v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->next:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    throw p1
.end method
