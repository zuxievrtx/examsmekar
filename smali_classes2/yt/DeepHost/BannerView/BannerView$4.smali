.class Lyt/DeepHost/BannerView/BannerView$4;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/BannerView;->Create_Text(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/BannerView;


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/BannerView;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView$4;->this$0:Lyt/DeepHost/BannerView/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 663
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView$4;->this$0:Lyt/DeepHost/BannerView/BannerView;

    invoke-virtual {p2, p1}, Lyt/DeepHost/BannerView/BannerView;->onPageScrolled(I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 669
    iget-object v0, p0, Lyt/DeepHost/BannerView/BannerView$4;->this$0:Lyt/DeepHost/BannerView/BannerView;

    invoke-virtual {v0, p1}, Lyt/DeepHost/BannerView/BannerView;->onPageSelected(I)V

    return-void
.end method
