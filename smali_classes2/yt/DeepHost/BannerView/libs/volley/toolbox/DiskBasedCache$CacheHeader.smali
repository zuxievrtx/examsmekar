.class Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field final allResponseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field final etag:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final lastModified:J

.field final serverDate:J

.field size:J

.field final softTtl:J

.field final ttl:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    const-string p1, ""

    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 441
    iput-wide p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 442
    iput-wide p5, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    .line 443
    iput-wide p7, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 444
    iput-wide p9, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 445
    iput-object p11, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)V
    .locals 12

    .line 455
    iget-object v2, p2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v3, p2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->serverDate:J

    iget-wide v5, p2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->lastModified:J

    iget-wide v7, p2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->ttl:J

    iget-wide v9, p2, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->softTtl:J

    .line 462
    invoke-static {p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->getAllResponseHeaders(Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 455
    invoke-direct/range {v0 .. v11}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private static getAllResponseHeaders(Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/Header;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 468
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    return-object p0

    .line 472
    :cond_0
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->toAllHeaderList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readHeader(Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CountingInputStream;)Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    .line 487
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readString(Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readString(Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 490
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 491
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 492
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 493
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->readHeaderList(Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;

    move-result-object v13

    .line 494
    new-instance p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 485
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method toCacheEntry([B)Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;
    .locals 3

    .line 500
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;

    invoke-direct {v0}, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;-><init>()V

    .line 501
    iput-object p1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->data:[B

    .line 502
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object p1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 503
    iget-wide v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->serverDate:J

    .line 504
    iget-wide v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    iput-wide v1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->lastModified:J

    .line 505
    iget-wide v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->ttl:J

    .line 506
    iget-wide v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->softTtl:J

    .line 507
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/HttpHeaderParser;->toHeaderMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 508
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lyt/DeepHost/BannerView/libs/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method writeHeader(Ljava/io/OutputStream;)Z
    .locals 4

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 515
    :try_start_0
    invoke-static {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 516
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 518
    iget-wide v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 519
    iget-wide v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    invoke-static {p1, v2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 520
    iget-wide v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 521
    iget-wide v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 522
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {v0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/DiskBasedCache;->writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 523
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 526
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
