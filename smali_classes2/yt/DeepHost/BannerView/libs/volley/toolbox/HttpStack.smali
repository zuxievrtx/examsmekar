.class public interface abstract Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;
.super Ljava/lang/Object;
.source "HttpStack.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract performRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation
.end method
