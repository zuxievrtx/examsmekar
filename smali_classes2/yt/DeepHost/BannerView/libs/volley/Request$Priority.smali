.class public final enum Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt/DeepHost/BannerView/libs/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyt/DeepHost/BannerView/libs/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

.field public static final enum HIGH:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

.field public static final enum LOW:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

.field public static final enum NORMAL:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 540
    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->LOW:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    .line 541
    new-instance v1, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->NORMAL:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    .line 542
    new-instance v3, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->HIGH:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    .line 543
    new-instance v5, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->IMMEDIATE:Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    const/4 v7, 0x4

    new-array v7, v7, [Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 539
    sput-object v7, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->$VALUES:[Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
    .locals 1

    .line 539
    const-class v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-object p0
.end method

.method public static values()[Lyt/DeepHost/BannerView/libs/volley/Request$Priority;
    .locals 1

    .line 539
    sget-object v0, Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->$VALUES:[Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    invoke-virtual {v0}, [Lyt/DeepHost/BannerView/libs/volley/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyt/DeepHost/BannerView/libs/volley/Request$Priority;

    return-object v0
.end method
