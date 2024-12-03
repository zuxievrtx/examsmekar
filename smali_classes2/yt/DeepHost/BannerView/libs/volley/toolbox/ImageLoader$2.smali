.class final Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->getImageListener(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultImageResId:Ljava/lang/String;

.field final synthetic val$errorImageResId:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$errorImageResId:Ljava/lang/String;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$defaultImageResId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$errorImageResId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$errorImageResId:Ljava/lang/String;

    invoke-static {v0, v1}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 124
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$defaultImageResId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$2;->val$defaultImageResId:Ljava/lang/String;

    invoke-static {p2, v0}, Lyt/DeepHost/BannerView/Layout/isReple;->mode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
