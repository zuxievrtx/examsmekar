.class public Lyt/DeepHost/BannerView/libs/banner/transformer/RotateDownTransformer;
.super Lyt/DeepHost/BannerView/libs/banner/transformer/ABaseTransformer;
.source "RotateDownTransformer.java"


# static fields
.field private static final ROT_MOD:F = -15.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3e900000    # -15.0f

    mul-float p2, p2, v2

    const/high16 v2, -0x40600000    # -1.25f

    mul-float p2, p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
