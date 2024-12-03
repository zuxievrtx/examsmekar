.class final Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getBitmapListener(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultImageResId:Ljava/lang/String;

.field final synthetic val$errorImageResId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$errorImageResId:Ljava/lang/String;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$defaultImageResId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$errorImageResId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$errorImageResId:Ljava/lang/String;

    invoke-static {p1, v0}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$defaultImageResId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$1;->val$defaultImageResId:Ljava/lang/String;

    invoke-static {p1, p2}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method
