.class public abstract Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;
.super Ljava/lang/Object;
.source "BaseHttpStack.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public final performRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;->executeRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;

    move-result-object p1

    .line 72
    new-instance p2, Lorg/apache/http/ProtocolVersion;

    const-string v0, "HTTP"

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 73
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    .line 75
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    const-string v2, ""

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 76
    new-instance p2, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt/DeepHost/BannerView/libs/volley/Header;

    .line 80
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/Header;

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    invoke-virtual {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 84
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 87
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;->getContentLength()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 89
    invoke-virtual {p2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    return-object p2
.end method
