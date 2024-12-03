.class public abstract Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;
.super Lyt/DeepHost/BannerView/libs/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyt/DeepHost/BannerView/libs/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    .line 43
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "TT;>;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p5}, Lyt/DeepHost/BannerView/libs/volley/Request;-><init>(ILjava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 75
    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "TT;>;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-direct/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 80
    invoke-super {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V

    .line 81
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    iput-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mListener:Lyt/DeepHost/BannerView/libs/volley/Response$Listener;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBody()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 122
    :try_start_0
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 124
    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
