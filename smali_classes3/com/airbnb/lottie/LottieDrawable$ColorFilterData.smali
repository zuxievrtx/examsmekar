.class Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;

.field final contentName:Ljava/lang/String;

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 1060
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 1061
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1083
    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1087
    :cond_1
    check-cast p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 1089
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    .line 1068
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int v1, v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 1071
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 1072
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int v1, v1, v0

    :cond_1
    return v1
.end method
