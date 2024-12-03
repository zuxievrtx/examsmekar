.class public Lyt/DeepHost/BannerView/CustomViewHolder2;
.super Ljava/lang/Object;
.source "CustomViewHolder2.java"

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

.field public text_color:I

.field public text_font:Landroid/graphics/Typeface;

.field public text_line:I

.field public text_size:I

.field public text_style:I


# direct methods
.method public constructor <init>(IIIIIIILandroid/graphics/Typeface;II)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 21
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_radius:I

    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_elevation:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_padding:I

    const/16 v0, 0x8

    .line 24
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_margin:I

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_color:I

    const/16 v0, 0x12

    .line 27
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_size:I

    const v0, -0x777778

    .line 28
    iput v0, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_color:I

    .line 29
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 37
    iput p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_radius:I

    .line 38
    iput p2, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_elevation:I

    .line 39
    iput p3, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_padding:I

    .line 40
    iput p4, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_margin:I

    .line 41
    iput p5, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_color:I

    .line 43
    iput p6, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_size:I

    .line 44
    iput p7, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_color:I

    .line 45
    iput-object p8, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_font:Landroid/graphics/Typeface;

    .line 46
    iput p9, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_style:I

    .line 47
    iput p10, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_line:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 18
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lyt/DeepHost/BannerView/CustomViewHolder2;->createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 5

    .line 55
    new-instance p2, Lyt/DeepHost/BannerView/design_size;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/design_size;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    iget v3, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_margin:I

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v3

    .line 60
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 63
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_radius:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardRadius(F)V

    .line 64
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_elevation:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardElevation(F)V

    .line 65
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_padding:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result p2

    .line 66
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->card_color:I

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardBackgroundColor(I)V

    .line 68
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 p2, 0x11

    .line 72
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {p1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_size:I

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_color:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_font:Landroid/graphics/Typeface;

    iget p2, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_style:I

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 82
    iget p1, p0, Lyt/DeepHost/BannerView/CustomViewHolder2;->text_line:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 84
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardView(Landroid/view/View;)V

    return-object v0
.end method
