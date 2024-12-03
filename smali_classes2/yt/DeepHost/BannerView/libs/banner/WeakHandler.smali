.class public Lyt/DeepHost/BannerView/libs/banner/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;,
        Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;,
        Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 24
    iput-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 25
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 29
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 30
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 34
    iput-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 35
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v1, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    .line 39
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 40
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;
    .locals 2

    if-eqz p1, :cond_0

    .line 204
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 205
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->insertAfter(Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;)V

    .line 206
    iget-object p1, v0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->wrapper:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    return-object p1

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 196
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mRunnables:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->mExec:Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
