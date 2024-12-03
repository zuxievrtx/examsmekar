.class public Lyt/DeepHost/BannerView/libs/volley/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;,
        Lyt/DeepHost/BannerView/libs/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

.field public final error:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->intermediate:Z

    .line 72
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->result:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->cacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->error:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->intermediate:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->result:Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->cacheEntry:Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    .line 80
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->error:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    return-void
.end method

.method public static error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyt/DeepHost/BannerView/libs/volley/VolleyError;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/Response;

    invoke-direct {v0, p0}, Lyt/DeepHost/BannerView/libs/volley/Response;-><init>(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/Response;

    invoke-direct {v0, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/Response;-><init>(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Response;->error:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
