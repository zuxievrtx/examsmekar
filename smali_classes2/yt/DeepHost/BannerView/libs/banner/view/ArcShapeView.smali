.class public Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;
.super Landroid/view/View;
.source "ArcShapeView.java"


# instance fields
.field private arcHeight:I

.field private direction:I

.field private endColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private startColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    const/4 p2, -0x1

    .line 17
    iput p2, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->startColor:I

    .line 18
    iput p2, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->endColor:I

    .line 19
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->direction:I

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->startColor:I

    iget v6, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->endColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 50
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    iget v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->direction:I

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v2

    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 56
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v2

    iget v3, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v3

    iget v4, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v3

    iget v4, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->getHeight()I

    move-result v4

    iget v5, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 64
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->setMeasuredDimension(II)V

    .line 41
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setArcHeight(I)V
    .locals 0

    .line 69
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->arcHeight:I

    return-void
.end method

.method public setBackground(II)V
    .locals 0

    .line 73
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->startColor:I

    .line 74
    iput p2, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->endColor:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 78
    iput p1, p0, Lyt/DeepHost/BannerView/libs/banner/view/ArcShapeView;->direction:I

    return-void
.end method
