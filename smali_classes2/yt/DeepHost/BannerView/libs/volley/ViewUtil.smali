.class public final Lyt/DeepHost/BannerView/libs/volley/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static URLBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 95
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getInstance(Landroid/content/Context;)Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getImageLoader()Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 96
    invoke-static {p0, p2, p3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getBitmapListener(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    .line 97
    sget-object p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static setCircleImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://drive.google.com/file/d/"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://drive.google.com/uc?id="

    .line 24
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/view?usp=sharing"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/view?usp=drivesdk"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_0
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getInstance(Landroid/content/Context;)Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getImageLoader()Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 29
    invoke-static {p0, p1, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getImageListener(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    .line 31
    invoke-virtual {p1, p2, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)V

    .line 33
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->requestLayout()V

    goto :goto_0

    :cond_1
    const-string p3, "/storage"

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 37
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 45
    invoke-static {p0, p2}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://drive.google.com/file/d/"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://drive.google.com/uc?id="

    .line 60
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/view?usp=sharing"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/view?usp=drivesdk"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 64
    :cond_0
    invoke-static {p0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getInstance(Landroid/content/Context;)Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/CustomVolleyRequestQueue;->getImageLoader()Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 65
    invoke-static {p0, p1, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getImageListener(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    .line 67
    invoke-virtual {p1, p2, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)V

    .line 69
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->requestLayout()V

    goto :goto_0

    :cond_1
    const-string p3, "/storage"

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 73
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 81
    invoke-static {p0, p2}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const/4 p0, 0x1

    .line 87
    invoke-virtual {p1, p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setAdjustViewBounds(Z)V

    .line 90
    :cond_4
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->requestLayout()V

    return-void
.end method
