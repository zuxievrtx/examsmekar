.class public Lyt/DeepHost/BannerView/libs/cardview/MyCardView;
.super Landroid/widget/RelativeLayout;
.source "MyCardView.java"


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    .line 22
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setCardBackgroundColor(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    .line 42
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    return-void
.end method

.method public setCardLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCardPadding(IIII)V
    .locals 1

    .line 46
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->setPadding(IIII)V

    return-void
.end method

.method public setCardRadius(F)V
    .locals 1

    .line 38
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    return-void
.end method

.method public setCardView(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    return-void
.end method
