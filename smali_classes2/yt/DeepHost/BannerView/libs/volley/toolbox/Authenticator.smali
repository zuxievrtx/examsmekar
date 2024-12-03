.class public interface abstract Lyt/DeepHost/BannerView/libs/volley/toolbox/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method
