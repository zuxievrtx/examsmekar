.class public Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "BannerViewPager.java"


# instance fields
.field private scrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->scrollable:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 23
    :try_start_0
    iget-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->scrollable:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method
