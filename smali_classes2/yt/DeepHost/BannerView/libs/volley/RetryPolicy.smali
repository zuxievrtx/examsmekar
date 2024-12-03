.class public interface abstract Lyt/DeepHost/BannerView/libs/volley/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/VolleyError;
        }
    .end annotation
.end method
