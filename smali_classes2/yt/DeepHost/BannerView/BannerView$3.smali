.class Lyt/DeepHost/BannerView/BannerView$3;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;


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

    .line 652
    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView$3;->this$0:Lyt/DeepHost/BannerView/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClick(Ljava/util/List;I)V
    .locals 0

    .line 655
    iget-object p1, p0, Lyt/DeepHost/BannerView/BannerView$3;->this$0:Lyt/DeepHost/BannerView/BannerView;

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/BannerView;->onBannerClick(I)V

    return-void
.end method
