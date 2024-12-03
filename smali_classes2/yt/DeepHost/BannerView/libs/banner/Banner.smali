.class public Lyt/DeepHost/BannerView/libs/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;
    }
.end annotation


# static fields
.field private static final NUM:I = 0x1388


# instance fields
.field private adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

.field private bannerBackgroundImage:I

.field private bannerStyle:I

.field private context:Landroid/content/Context;

.field private count:I

.field private creator:Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;

.field private currentItem:I

.field private delayTime:I

.field private gravity:I

.field gray_radius:Landroid/graphics/drawable/GradientDrawable;

.field private handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

.field private indicator:Landroid/widget/LinearLayout;

.field private indicatorImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field indicatorParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private indicatorSize:I

.field public indicator_selected_color:I

.field public indicator_unselected_color:I

.field private isAutoPlay:Z

.field private isLoop:Z

.field private isPrepare:Z

.field private isScroll:Z

.field private isStart:Z

.field private lastPosition:I

.field private listener:Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;

.field private mArcDirection:I

.field private mArcEndColor:I

.field private mArcHeight:I

.field private mArcStartColor:I

.field private mCurrentPage:I

.field private mDatas:Ljava/util/List;

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorPadding:I

.field private mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorWidth:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPageLeftMargin:I

.field private mPageRightMargin:I

.field private scrollTime:I

.field private final task:Ljava/lang/Runnable;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

.field white_radius:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 30
    iput v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorPadding:I

    const/16 v1, 0xa

    .line 31
    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    const/4 v2, -0x2

    .line 32
    iput v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorWidth:I

    .line 33
    iput v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorHeight:I

    .line 34
    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    const/16 v3, 0x7d0

    .line 37
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->delayTime:I

    const/16 v3, 0x320

    .line 38
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->scrollTime:I

    .line 39
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isAutoPlay:Z

    const/4 v3, 0x0

    .line 40
    iput-boolean v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isStart:Z

    .line 41
    iput-boolean v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isPrepare:Z

    .line 42
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isScroll:Z

    .line 43
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    .line 48
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    const/4 v4, -0x1

    .line 49
    iput v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    .line 50
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mCurrentPage:I

    .line 51
    iput v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gravity:I

    const/16 v3, 0x14

    .line 63
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mPageLeftMargin:I

    .line 64
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mPageRightMargin:I

    .line 69
    new-instance v3, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    invoke-direct {v3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;-><init>()V

    iput-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    const v3, -0x333334

    .line 71
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_selected_color:I

    const v3, -0x777778

    .line 72
    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_unselected_color:I

    .line 409
    new-instance v3, Lyt/DeepHost/BannerView/libs/banner/Banner$1;

    invoke-direct {v3, p0}, Lyt/DeepHost/BannerView/libs/banner/Banner$1;-><init>(Lyt/DeepHost/BannerView/libs/banner/Banner;)V

    iput-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->task:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->context:Landroid/content/Context;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->titles:Ljava/util/List;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    .line 87
    new-instance v3, Lyt/DeepHost/BannerView/libs/banner/design_size;

    invoke-direct {v3, p1}, Lyt/DeepHost/BannerView/libs/banner/design_size;-><init>(Landroid/content/Context;)V

    .line 89
    iget v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    invoke-virtual {v3, v5}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v5

    iput v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    .line 90
    iget v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    invoke-virtual {v3, v5}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v5

    iput v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    .line 92
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    .line 93
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 94
    iget-object v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    iget v6, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_selected_color:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 95
    iget-object v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 96
    iget-object v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v6

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 98
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    .line 99
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 100
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_unselected_color:I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 101
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 102
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v5

    invoke-virtual {v3, v0}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 105
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

    .line 106
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

    .line 109
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/res/banner_layout;-><init>(Landroid/content/Context;)V

    const-string p1, "bannerViewPager"

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    .line 111
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v1, p1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "circleIndicator"

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    .line 116
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 119
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->initViewPagerScroll()V

    .line 122
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lyt/DeepHost/BannerView/libs/banner/Banner;)I
    .locals 0

    .line 28
    iget p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    return p0
.end method

.method static synthetic access$1000(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->creator:Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;

    return-object p0
.end method

.method static synthetic access$1100(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->toRealPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->listener:Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I
    .locals 0

    .line 28
    iget p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    return p0
.end method

.method static synthetic access$202(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I
    .locals 0

    .line 28
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    return p1
.end method

.method static synthetic access$300(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lyt/DeepHost/BannerView/libs/banner/Banner;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    return p0
.end method

.method static synthetic access$500(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    return-object p0
.end method

.method static synthetic access$800(Lyt/DeepHost/BannerView/libs/banner/Banner;)I
    .locals 0

    .line 28
    iget p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->delayTime:I

    return p0
.end method

.method static synthetic access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method private createIndicator()V
    .locals 5

    .line 318
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/design_size;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/design_size;-><init>(Landroid/content/Context;)V

    .line 320
    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v1

    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    .line 321
    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/design_size;->getPixels(I)I

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    .line 323
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 325
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gray_radius:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_selected_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 326
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->white_radius:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 328
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 329
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 330
    :goto_0
    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-ge v0, v1, :cond_5

    .line 331
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 332
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 333
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorPadding:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 335
    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorPadding:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 336
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    iget v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorPadding:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 339
    iget v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorPadding:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v0, :cond_1

    .line 341
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 345
    :cond_0
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 348
    :cond_1
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 351
    :cond_2
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :goto_1
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 357
    :cond_3
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_5
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gravity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 361
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_6
    return-void
.end method

.method private initViewPagerScroll()V
    .locals 3

    .line 128
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    new-instance v1, Lyt/DeepHost/BannerView/libs/banner/BannerScroller;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lyt/DeepHost/BannerView/libs/banner/BannerScroller;-><init>(Landroid/content/Context;)V

    .line 131
    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->scrollTime:I

    invoke-virtual {v1, v2}, Lyt/DeepHost/BannerView/libs/banner/BannerScroller;->setDuration(I)V

    .line 132
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 5

    .line 365
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 366
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mCurrentPage:I

    const/16 v3, 0x9c4

    if-lez v0, :cond_0

    iget v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-ge v0, v4, :cond_0

    .line 367
    rem-int v4, v3, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    rem-int v0, v3, v0

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    iput v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    .line 371
    :goto_0
    iput v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    goto :goto_2

    .line 373
    :cond_1
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mCurrentPage:I

    if-lez v0, :cond_2

    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-ge v0, v3, :cond_2

    .line 374
    iput v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    goto :goto_1

    .line 376
    :cond_2
    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    .line 378
    :goto_1
    iput v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    .line 380
    :goto_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    if-nez v0, :cond_3

    .line 381
    new-instance v0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;-><init>(Lyt/DeepHost/BannerView/libs/banner/Banner;Lyt/DeepHost/BannerView/libs/banner/Banner$1;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    .line 382
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v0, p0}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 384
    :cond_3
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    invoke-virtual {v0, v3}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 385
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    invoke-virtual {v0, v3}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setCurrentItem(I)V

    .line 386
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isScroll:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-le v0, v2, :cond_4

    .line 387
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v0, v2}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setScrollable(Z)V

    goto :goto_3

    .line 389
    :cond_4
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setScrollable(Z)V

    .line 391
    :goto_3
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->startAutoPlay()V

    return-void
.end method

.method private setImageList()V
    .locals 2

    .line 308
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->createIndicator()V

    :cond_1
    return-void
.end method

.method private setStyleUI()V
    .locals 3

    .line 294
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 295
    :goto_0
    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private toRealPosition(I)I
    .locals 2

    .line 460
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 462
    :cond_0
    iget-boolean v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v0

    .line 463
    rem-int/2addr p1, v0

    goto :goto_0

    :cond_1
    add-int/2addr p1, v0

    .line 465
    rem-int/2addr p1, v0

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    :cond_2
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->startAutoPlay()V

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 445
    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mPageLeftMargin:I

    if-nez v1, :cond_3

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mPageRightMargin:I

    if-eqz v2, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->stopAutoPlay()V

    goto :goto_1

    :cond_3
    :goto_0
    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 446
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->getWidth()I

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mPageRightMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 447
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->stopAutoPlay()V

    .line 454
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isPrepare()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isPrepare:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isStart:Z

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 549
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->toRealPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 556
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->currentItem:I

    .line 557
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->toRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 560
    :cond_0
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 564
    :cond_1
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->toRealPosition(I)I

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 577
    :cond_4
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->toRealPosition(I)I

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    :goto_0
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->lastPosition:I

    :cond_5
    return-void
.end method

.method public releaseBanner()V
    .locals 2

    .line 607
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoPlay(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isAutoPlay:Z

    return-object p0
.end method

.method public setBannerAnimation(Ljava/lang/Class;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;)",
            "Lyt/DeepHost/BannerView/libs/banner/Banner;"
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-virtual {v0, v1, p1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setBannerStyle(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 212
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    return-object p0
.end method

.method public setCurrentPage(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 222
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mCurrentPage:I

    return-object p0
.end method

.method public setDelayTime(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 149
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->delayTime:I

    return-object p0
.end method

.method public setIndicatorGravity(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 162
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gravity:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    .line 159
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gravity:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x13

    .line 156
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->gravity:I

    :goto_0
    return-object p0
.end method

.method public setIndicatorMargin(I)V
    .locals 1

    .line 200
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorMargin:I

    .line 201
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public setIndicatorRes(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 288
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[Banner] --> The Drawable res is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndicatorRes(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 279
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorSelectedResId:Landroid/graphics/drawable/GradientDrawable;

    .line 280
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mIndicatorUnselectedResId:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public setIndicatorSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 190
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_selected_color:I

    return-object p0
.end method

.method public setIndicatorSize(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 185
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorSize:I

    return-object p0
.end method

.method public setIndicatorUnSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 195
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator_unselected_color:I

    return-object p0
.end method

.method public setLoop(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 144
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isLoop:Z

    return-object p0
.end method

.method public setOffscreenPageLimit(I)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 1

    .line 178
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setOffscreenPageLimit(I)V

    :cond_0
    return-object p0
.end method

.method public setOnBannerClickListener(Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 598
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->listener:Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;

    return-object p0
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 1

    .line 205
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->viewPager:Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    invoke-virtual {v0, p1, p2}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-object p0
.end method

.method public setPages(Ljava/util/List;Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;",
            ")",
            "Lyt/DeepHost/BannerView/libs/banner/Banner;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->creator:Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    return-object p0
.end method

.method public setViewPagerIsScroll(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 0

    .line 217
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isScroll:Z

    return-object p0
.end method

.method public start()Lyt/DeepHost/BannerView/libs/banner/Banner;
    .locals 1

    .line 261
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    if-lez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setStyleUI()V

    .line 263
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setImageList()V

    .line 264
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setData()V

    :cond_0
    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isPrepare:Z

    return-object p0
.end method

.method public startAutoPlay()V
    .locals 4

    .line 395
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isAutoPlay:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->task:Ljava/lang/Runnable;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isStart:Z

    :cond_0
    return-void
.end method

.method public stopAutoPlay()V
    .locals 2

    .line 403
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isAutoPlay:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->handler:Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->isStart:Z

    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 242
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    .line 243
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->adapter:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->count:I

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOffscreenPageLimit(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 250
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->start()Lyt/DeepHost/BannerView/libs/banner/Banner;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBannerStyle(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner;->bannerStyle:I

    .line 257
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->start()Lyt/DeepHost/BannerView/libs/banner/Banner;

    return-void
.end method
