.class Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->processRequest(Lyt/DeepHost/BannerView/libs/volley/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

.field final synthetic val$request:Lyt/DeepHost/BannerView/libs/volley/Request;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;->val$request:Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;->access$100(Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/CacheDispatcher$1;->val$request:Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
