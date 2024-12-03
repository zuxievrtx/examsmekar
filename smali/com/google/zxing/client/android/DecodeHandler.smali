.class final Lcom/google/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeHandler"


# instance fields
.field private final activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/AppInvCaptureActivity;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 46
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 47
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    return-void
.end method

.method private decode([BII)V
    .locals 8

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v6, v5, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, p2

    add-int/2addr v7, v5

    .line 81
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2, p3, p2}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 92
    :try_start_0
    iget-object p3, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p3, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 97
    throw p1

    .line 96
    :catch_0
    iget-object p2, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_2
    const/4 p2, 0x0

    .line 100
    :goto_2
    iget-object p3, p0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {p3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    sget-object v4, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found barcode in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    const/4 v0, 0x3

    .line 106
    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 107
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/client/android/DecodeHandler;->toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    .line 109
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    const/4 p1, 0x2

    .line 115
    invoke-static {p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_3
    return-void
.end method

.method private static toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;
    .locals 8

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v6

    .line 123
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    .line 124
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    .line 125
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/google/zxing/client/android/DecodeHandler;->decode([BII)V

    :goto_0
    return-void
.end method
