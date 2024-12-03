.class public Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;
.super Ljava/lang/Object;
.source "ScaleRightTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final SCALE_X:F = 0.08f


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
    .locals 1

    .line 13
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    sub-int/2addr p2, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 18
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const v0, 0x3da3d70a    # 0.08f

    mul-float p2, p2, v0

    .line 19
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/transformer/ScaleRightTransformer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v0, p2

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    return-void
.end method
