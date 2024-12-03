.class public Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;
.super Landroid/widget/RelativeLayout;
.source "banner_layout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "bannerContainer"

    .line 15
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->setTag(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->setClipChildren(Z)V

    .line 19
    new-instance v2, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-direct {v2, p1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;-><init>(Landroid/content/Context;)V

    const-string v3, "bannerViewPager"

    .line 20
    invoke-virtual {v2, v3}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setTag(Ljava/lang/Object;)V

    .line 21
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v2, v0}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setClipChildren(Z)V

    .line 24
    invoke-virtual {p0, v2}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->addView(Landroid/view/View;)V

    .line 26
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    .line 28
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0, v2}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->addView(Landroid/view/View;)V

    .line 33
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "circleIndicator"

    .line 34
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 35
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 36
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 37
    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 38
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 39
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x8

    .line 40
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
