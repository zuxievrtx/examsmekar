.class Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->this$1:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    iput p2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 506
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->this$1:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    iget-object p1, p1, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1200(Lyt/DeepHost/BannerView/libs/banner/Banner;)Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;

    move-result-object p1

    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->this$1:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    iget-object v0, v0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$900(Lyt/DeepHost/BannerView/libs/banner/Banner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->this$1:Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;

    iget-object v1, v1, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter;->this$0:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/banner/Banner$BannerPagerAdapter$1;->val$position:I

    invoke-static {v1, v2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->access$1100(Lyt/DeepHost/BannerView/libs/banner/Banner;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;->onBannerClick(Ljava/util/List;I)V

    return-void
.end method
