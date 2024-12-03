.class Lyt/DeepHost/BannerView/libs/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/banner/Banner;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 412
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$100(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 413
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$300(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$202(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I

    .line 414
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$400(Lyt/DeepHost/BannerView/libs/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v0

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$500(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    .line 416
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$202(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I

    .line 417
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$300(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    .line 418
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$700(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$600(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$300(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setCurrentItem(I)V

    .line 421
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$700(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$600(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$800(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$500(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 425
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->stopAutoPlay()V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$300(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$200(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/banner/view/BannerViewPager;->setCurrentItem(I)V

    .line 428
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$700(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$600(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$1;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$800(Lyt/DeepHost/BannerView/libs/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lyt/DeepHost/BannerView/libs/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
