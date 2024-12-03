.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack$HttpPatch;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method static createHttpRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getMethod()I

    move-result p1

    const-string v0, "Content-Type"

    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown request method."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :pswitch_0
    new-instance p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lyt/DeepHost/BannerView/libs/volley/Request;)V

    return-object p1

    .line 144
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 142
    :pswitch_2
    new-instance p1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 140
    :pswitch_3
    new-instance p1, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 124
    :pswitch_4
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 134
    :pswitch_5
    new-instance p1, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lyt/DeepHost/BannerView/libs/volley/Request;)V

    return-object p1

    .line 127
    :pswitch_6
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lyt/DeepHost/BannerView/libs/volley/Request;)V

    return-object p1

    .line 122
    :pswitch_7
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 108
    :pswitch_8
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPostBody()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 115
    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v1

    .line 118
    :cond_0
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lyt/DeepHost/BannerView/libs/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyt/DeepHost/BannerView/libs/volley/AuthFailureError;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getBody()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 163
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private static setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public performRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2
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

    .line 81
    invoke-static {p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->createHttpRequest(Lyt/DeepHost/BannerView/libs/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 82
    invoke-static {v0, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 85
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 86
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 87
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    .line 88
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->getTimeoutMs()I

    move-result p1

    const/16 v1, 0x1388

    .line 91
    invoke-static {p2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
