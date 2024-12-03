.class public Lyt/DeepHost/BannerView/CustomViewHolder;
.super Ljava/lang/Object;
.source "CustomViewHolder.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public card_color:I

.field public card_elevation:I

.field public card_margin:I

.field public card_padding:I

.field public card_radius:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder;->card_radius:I

    .line 26
    iput p2, p0, Lyt/DeepHost/BannerView/CustomViewHolder;->card_elevation:I

    .line 27
    iput p3, p0, Lyt/DeepHost/BannerView/CustomViewHolder;->card_padding:I

    .line 28
    iput p4, p0, Lyt/DeepHost/BannerView/CustomViewHolder;->card_margin:I

    .line 29
    iput p5, p0, Lyt/DeepHost/BannerView/CustomViewHolder;->card_color:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 16
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lyt/DeepHost/BannerView/CustomViewHolder;->createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 7

    .line 35
    new-instance p2, Lyt/DeepHost/BannerView/design_size;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/design_size;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    .line 39
    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v4

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v5

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v6

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result p2

    invoke-virtual {v1, v4, v5, v6, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :try_start_0
    sget-object p1, Lyt/DeepHost/BannerView/BannerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
