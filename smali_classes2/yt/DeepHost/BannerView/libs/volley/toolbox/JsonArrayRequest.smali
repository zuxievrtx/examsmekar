.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonArrayRequest;
.super Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONArray;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 63
    invoke-direct/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 44
    invoke-direct/range {v0 .. v5}, Lyt/DeepHost/BannerView/libs/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Response$Listener;Lyt/DeepHost/BannerView/libs/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;",
            ")",
            "Lyt/DeepHost/BannerView/libs/volley/Response<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 77
    invoke-static {v2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 78
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lyt/DeepHost/BannerView/libs/volley/NetworkResponse;)Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lyt/DeepHost/BannerView/libs/volley/Response;->success(Ljava/lang/Object;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 83
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/ParseError;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/Response;->error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 81
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/ParseError;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/volley/Response;->error(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)Lyt/DeepHost/BannerView/libs/volley/Response;

    move-result-object p1

    return-object p1
.end method
