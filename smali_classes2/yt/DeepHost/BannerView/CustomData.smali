.class public Lyt/DeepHost/BannerView/CustomData;
.super Ljava/lang/Object;
.source "CustomData.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lyt/DeepHost/BannerView/CustomData;->image:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lyt/DeepHost/BannerView/CustomData;->icon:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lyt/DeepHost/BannerView/CustomData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lyt/DeepHost/BannerView/CustomData;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lyt/DeepHost/BannerView/CustomData;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lyt/DeepHost/BannerView/CustomData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lyt/DeepHost/BannerView/CustomData;->icon:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lyt/DeepHost/BannerView/CustomData;->image:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lyt/DeepHost/BannerView/CustomData;->title:Ljava/lang/String;

    return-void
.end method
