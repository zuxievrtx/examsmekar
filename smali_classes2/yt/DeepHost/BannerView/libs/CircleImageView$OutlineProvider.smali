.class Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/CircleImageView;


# direct methods
.method private constructor <init>(Lyt/DeepHost/BannerView/libs/CircleImageView;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;->this$0:Lyt/DeepHost/BannerView/libs/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyt/DeepHost/BannerView/libs/CircleImageView;Lyt/DeepHost/BannerView/libs/CircleImageView$1;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;-><init>(Lyt/DeepHost/BannerView/libs/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;->this$0:Lyt/DeepHost/BannerView/libs/CircleImageView;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->access$100(Lyt/DeepHost/BannerView/libs/CircleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    .line 429
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 430
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;->this$0:Lyt/DeepHost/BannerView/libs/CircleImageView;

    invoke-static {v0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->access$200(Lyt/DeepHost/BannerView/libs/CircleImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_0
    return-void
.end method
