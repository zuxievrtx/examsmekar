.class public Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
.super Lyt/DeepHost/BannerView/libs/volley/VolleyError;
.source "AuthFailureError.java"


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>()V

    .line 30
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;-><init>(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 54
    :cond_0
    invoke-super {p0}, Lyt/DeepHost/BannerView/libs/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    .line 46
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
