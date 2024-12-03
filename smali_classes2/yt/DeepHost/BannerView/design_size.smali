.class public Lyt/DeepHost/BannerView/design_size;
.super Ljava/lang/Object;
.source "design_size.java"


# instance fields
.field private density:F

.field private display:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/design_size;->display:Landroid/util/DisplayMetrics;

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lyt/DeepHost/BannerView/design_size;->density:F

    return-void
.end method


# virtual methods
.method public getPixels(I)I
    .locals 1

    int-to-float p1, p1

    .line 16
    iget v0, p0, Lyt/DeepHost/BannerView/design_size;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method
