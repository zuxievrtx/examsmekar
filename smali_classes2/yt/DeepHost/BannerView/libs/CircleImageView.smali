.class public Lyt/DeepHost/BannerView/libs/CircleImageView;
.super Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_CIRCLE_BACKGROUND_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mCircleBackgroundColor:I

.field private final mCircleBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lyt/DeepHost/BannerView/libs/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 37
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lyt/DeepHost/BannerView/libs/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 53
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    .line 55
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    .line 75
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lyt/DeepHost/BannerView/libs/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    const/high16 p2, -0x1000000

    .line 87
    iput p2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    .line 88
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderOverlay:Z

    .line 89
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    .line 91
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->init()V

    return-void
.end method

.method static synthetic access$100(Lyt/DeepHost/BannerView/libs/CircleImageView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    return p0
.end method

.method static synthetic access$200(Lyt/DeepHost/BannerView/libs/CircleImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 33
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private applyColorFilter()V
    .locals 2

    .line 280
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 371
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 372
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 374
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 376
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 377
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 379
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v3, v2

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 290
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 291
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 297
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 298
    sget-object v1, Lyt/DeepHost/BannerView/libs/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lyt/DeepHost/BannerView/libs/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private inTouchableArea(FF)Z
    .locals 6

    .line 414
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 418
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    iget p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRadius:F

    float-to-double p1, p1

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    cmpg-double v0, v2, p1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private init()V
    .locals 2

    .line 95
    sget-object v0, Lyt/DeepHost/BannerView/libs/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mReady:Z

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyt/DeepHost/BannerView/libs/CircleImageView$OutlineProvider;-><init>(Lyt/DeepHost/BannerView/libs/CircleImageView;Lyt/DeepHost/BannerView/libs/CircleImageView$1;)V

    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mSetupPending:Z

    :cond_1
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 319
    :goto_0
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 323
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 324
    iput-boolean v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mSetupPending:Z

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 333
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->invalidate()V

    return-void

    .line 337
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 339
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 341
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 342
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 344
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 349
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapHeight:I

    .line 354
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapWidth:I

    .line 356
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 357
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRadius:F

    .line 359
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 360
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 361
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 363
    :cond_3
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRadius:F

    .line 365
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->applyColorFilter()V

    .line 366
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->updateShaderMatrix()V

    .line 367
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 5

    .line 387
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 389
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 391
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    move v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 394
    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    .line 397
    :goto_0
    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 398
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 400
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 166
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 198
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getCircleBackgroundColor()I
    .locals 1

    .line 180
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 273
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 110
    sget-object v0, Lyt/DeepHost/BannerView/libs/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 129
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 138
    :cond_1
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 143
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->onSizeChanged(IIII)V

    .line 150
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 406
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lyt/DeepHost/BannerView/libs/CircleImageView;->inTouchableArea(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 170
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderColor:I

    .line 175
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderOverlay:Z

    .line 220
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 202
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 206
    :cond_0
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mBorderWidth:I

    .line 207
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method public setCircleBackgroundColor(I)V
    .locals 1

    .line 184
    iget v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 188
    :cond_0
    iput p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundColor:I

    .line 189
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->invalidate()V

    return-void
.end method

.method public setCircleBackgroundColorResource(I)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setCircleBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 266
    :cond_0
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 267
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->applyColorFilter()V

    .line 268
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 232
    :cond_0
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/libs/CircleImageView;->mDisableCircularTransformation:Z

    .line 233
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 251
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageURI(Landroid/net/Uri;)V

    .line 257
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setPadding(IIII)V

    .line 156
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setPaddingRelative(IIII)V

    .line 162
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 115
    sget-object v0, Lyt/DeepHost/BannerView/libs/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
