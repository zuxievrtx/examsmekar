.class public final Lcom/google/zxing/client/android/AppInvCaptureActivity;
.super Landroid/app/Activity;
.source "AppInvCaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String; = "AppInvCaptureActivity"


# instance fields
.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private frameLayout:Landroid/widget/FrameLayout;

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private lastResult:Lcom/google/zxing/Result;

.field private returnRaw:Z

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private surfaceView:Landroid/view/SurfaceView;

.field private viewLayout:Landroid/widget/LinearLayout;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 76
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 249
    iput-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 252
    iput-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    :cond_1
    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    :goto_0
    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 2

    .line 523
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Scanner"

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Camera Framework Bug"

    .line 525
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6

    .line 346
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 7

    .line 322
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 323
    array-length v1, v0

    if-lez v1, :cond_3

    .line 324
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const v2, -0x3f663400

    .line 326
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/high16 p2, 0x40800000    # 4.0f

    .line 328
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    aget-object p2, v0, v5

    aget-object v0, v0, v4

    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_1

    .line 330
    :cond_0
    array-length v2, v0

    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    .line 331
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v2, v6, :cond_1

    .line 332
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p2

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v2, :cond_2

    .line 334
    :cond_1
    aget-object p2, v0, v5

    aget-object v2, v0, v4

    invoke-static {v1, p1, p2, v2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 335
    aget-object p2, v0, v3

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_1

    :cond_2
    const/high16 p2, 0x41200000    # 10.0f

    .line 337
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    array-length p2, v0

    :goto_0
    if-ge v5, p2, :cond_3

    aget-object v2, v0, v5

    .line 339
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v1, v3, v2, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p3, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, p3}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-wide/16 v0, 0x5dc

    if-nez p3, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v2, "RESULT_DISPLAY_DURATION_MS"

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 439
    :goto_0
    iget-boolean p3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "clipboard"

    .line 440
    invoke-virtual {p0, p3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/ClipboardManager;

    .line 441
    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 443
    invoke-virtual {p3, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_2
    iget-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object p3, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne p2, p3, :cond_8

    .line 451
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x80000

    .line 452
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SCAN_RESULT"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p3

    if-eqz p3, :cond_3

    .line 456
    array-length v2, p3

    if-lez v2, :cond_3

    const-string v2, "SCAN_RESULT_BYTES"

    .line 457
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 459
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 461
    sget-object p3, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 462
    sget-object p3, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 463
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 462
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    :cond_4
    sget-object p3, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    .line 467
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v2, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    :cond_5
    sget-object p3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v2, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 471
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    :cond_6
    sget-object p3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    if-eqz p1, :cond_7

    const/4 p3, 0x0

    .line 476
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x6

    .line 482
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    :cond_8
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 496
    sget-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() was called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "initCamera() while already open -- late SurfaceView callback?"

    .line 501
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 507
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 508
    new-instance p1, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    :cond_1
    const/4 p1, 0x0

    .line 510
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    sget-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    invoke-direct {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 512
    sget-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    invoke-direct {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    :goto_0
    return-void

    .line 498
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 489
    iget-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 491
    :cond_0
    iget-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {p2, p1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 290
    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 291
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 295
    invoke-direct {p0, p2, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 298
    :cond_1
    sget-object v4, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    iget-object v5, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_3

    const/4 v1, 0x2

    if-eq v4, v1, :cond_3

    const/4 p1, 0x3

    if-eq v4, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    const-string p1, " (bulk scan)"

    .line 306
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-wide/16 p1, 0x3e8

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-direct {p0, p1, v0, p2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 117
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 120
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 124
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 125
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 127
    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    return v2

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    :cond_2
    return v2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v0, v3, :cond_4

    .line 222
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->finish()V

    return v2

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v0, :cond_6

    const-wide/16 p1, 0x0

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    return v2

    .line 243
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 204
    iget-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 206
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 207
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 209
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 140
    new-instance v0, Lcom/google/zxing/client/android/ViewfinderView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 141
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 142
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 145
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 147
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 149
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 152
    iget-boolean v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-eqz v2, :cond_1

    .line 155
    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v2, 0x3

    .line 159
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    .line 166
    iput-boolean v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    .line 168
    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 169
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 170
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    const-string v3, "com.google.zxing.client.android.SCAN"

    .line 177
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 181
    invoke-static {v0}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    const-string v1, "SCAN_WIDTH"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SCAN_HEIGHT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 185
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 187
    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    :cond_2
    const-string v1, "CHARACTER_SET"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 533
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 265
    sget-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 269
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    return-void
.end method
