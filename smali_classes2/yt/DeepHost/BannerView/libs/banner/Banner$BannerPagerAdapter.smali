.class Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;


# direct methods
.method private constructor <init>(Lyt/DeepHost/BannerView/libs/banner/Banner;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyt/DeepHost/BannerView/libs/banner/Banner;Lyt/DeepHost/BannerView/libs/banner/Banner$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;-><init>(Lyt/DeepHost/BannerView/libs/banner/Banner;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 515
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 476
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 481
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$400(Lyt/DeepHost/BannerView/libs/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    return v0

    .line 485
    :cond_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 496
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1000(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1000(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v2, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1100(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I

    move-result v2

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v3}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v4, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1100(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;->createView(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1200(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    new-instance p1, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;

    invoke-direct {p1, p0, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;-><init>(Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0

    .line 497
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[Banner] --> The layout is not specified,please set holder"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
