.class Lyt/DeepHost/BannerView/libs/volley/toolbox/AdaptedHttpStack;
.super Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;
.source "AdaptedHttpStack.java"


# instance fields
.field private final mHttpStack:Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/BaseHttpStack;-><init>()V

    .line 42
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;

    return-void
.end method


# virtual methods
.method public executeRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;
    .locals 7
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

    .line 50
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;

    invoke-interface {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;->performRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .line 59
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 62
    new-instance v5, Lyt/DeepHost/BannerView/libs/volley/Header;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lyt/DeepHost/BannerView/libs/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;

    invoke-direct {p1, p2, v1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;)V

    return-object p1

    .line 69
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;

    .line 77
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v3, v2

    .line 78
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p2, v1, v3, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v0

    .line 71
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
