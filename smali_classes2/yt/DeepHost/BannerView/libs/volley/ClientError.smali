.class public Lyt/DeepHost/BannerView/libs/volley/ClientError;
.super Lyt/DeepHost/BannerView/libs/volley/ServerError;
.source "ClientError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/ServerError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/ServerError;-><init>(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)V

    return-void
.end method
