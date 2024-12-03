.class Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

.field private final mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lyt/DeepHost/BannerView/libs/volley/Request;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt/DeepHost/BannerView/libs/volley/Request<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 452
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    .line 453
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    .line 432
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 432
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .locals 0

    .line 432
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addContainer(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lyt/DeepHost/BannerView/libs/volley/VolleyError;
    .locals 1

    .line 463
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 484
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lyt/DeepHost/BannerView/libs/volley/Request;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/Request;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setError(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lyt/DeepHost/BannerView/libs/volley/VolleyError;

    return-void
.end method
