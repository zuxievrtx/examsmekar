.class final Lcom/google/appinventor/components/runtime/Marker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 2151
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2152
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2154
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 4133
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4134
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 4136
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 5128
    aget-object p2, p2, v0

    check-cast p2, Lcom/google/appinventor/components/runtime/Marker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingTo(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 3142
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3143
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 3145
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 1160
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1161
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1163
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
