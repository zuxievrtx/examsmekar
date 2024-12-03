.class public Lyt/DeepHost/BannerView/CustomViewHolder1;
.super Ljava/lang/Object;
.source "CustomViewHolder1.java"

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

.field public loading_icon:Ljava/lang/String;

.field public offline_icon:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_radius:I

    .line 34
    iput p2, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_elevation:I

    .line 35
    iput p3, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_padding:I

    .line 36
    iput p4, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_margin:I

    .line 37
    iput p5, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_color:I

    .line 39
    iput-object p6, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->loading_icon:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->offline_icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 19
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lyt/DeepHost/BannerView/CustomViewHolder1;->createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 4

    .line 49
    new-instance p2, Lyt/DeepHost/BannerView/design_size;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/design_size;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    iget v3, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_margin:I

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v3

    .line 54
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_radius:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardRadius(F)V

    .line 58
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_elevation:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardElevation(F)V

    .line 59
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_padding:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result p2

    .line 60
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->card_color:I

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardBackgroundColor(I)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 p2, 0x11

    .line 66
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69
    new-instance p2, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "http"

    .line 75
    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->loading_icon:Ljava/lang/String;

    iget-object v3, p0, Lyt/DeepHost/BannerView/CustomViewHolder1;->offline_icon:Ljava/lang/String;

    invoke-static {p1, p2, p3, v2, v3}, Lyt/DeepHost/BannerView/libs/volley/ViewUtil;->setImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_0
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

    .line 85
    :goto_0
    invoke-virtual {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardView(Landroid/view/View;)V

    return-object v0
.end method
