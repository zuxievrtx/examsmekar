.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;
.super Lyt/DeepHost/BannerView/libs/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyt/DeepHost/BannerView/libs/volley/Request<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p4}, Lyt/DeepHost/BannerView/libs/volley/Request;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    .line 35
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mLock:Ljava/lang/Object;

    .line 55
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 72
    invoke-super {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V

    .line 73
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/StringRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 101
    :goto_0
    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/Response;->success(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    return-object p1
.end method
