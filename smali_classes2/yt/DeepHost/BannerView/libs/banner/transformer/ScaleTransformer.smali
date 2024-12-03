.class public Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;
.super Ljava/lang/Object;
.source "ScaleTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final SCALE_X:F = 0.05f

.field private static final SCALE_Y:F = 0.8f


# instance fields
.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 14
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    const v2, 0x3e4ccccc    # 0.19999999f

    goto :goto_0

    :cond_1
    const v2, -0x41b33334    # -0.19999999f

    :goto_0
    mul-float p2, p2, v2

    add-float/2addr p2, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 22
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    .line 23
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 24
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void
.end method
