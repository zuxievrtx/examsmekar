.class public Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageBitmap:Landroid/graphics/Bitmap;

.field private mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultImageId:I

.field private mErrorImageBitmap:Landroid/graphics/Bitmap;

.field private mErrorImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorImageId:I

.field private mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 31
    iget p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return p0
.end method

.method static synthetic access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 31
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 31
    iget p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return p0
.end method

.method static synthetic access$400(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 31
    iget-object p0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .line 302
    iget v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 334
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 335
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method loadImageIfNecessary(Z)V
    .locals 8

    .line 201
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    .line 202
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 206
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    .line 220
    :cond_4
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_5

    .line 222
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    .line 225
    :cond_5
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    return-void

    .line 230
    :cond_6
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 231
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 236
    :cond_7
    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 237
    invoke-direct {p0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    :cond_8
    if-eqz v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    if-eqz v5, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    move v6, v1

    .line 249
    :goto_3
    iget-object v2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v4, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    .line 250
    invoke-virtual/range {v2 .. v7}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 321
    iget-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageContainer:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;

    .line 329
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 316
    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    .line 140
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    .line 126
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageId:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageId:I

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    .line 179
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    .line 165
    iput-object v0, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    iput p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;)V
    .locals 0

    .line 110
    invoke-static {}, Lyt/DeepHost/BannerView/libs/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 111
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->mImageLoader:Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader;

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
