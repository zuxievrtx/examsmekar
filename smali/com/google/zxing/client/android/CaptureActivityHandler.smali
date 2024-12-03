.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/AppInvCaptureActivity;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 58
    new-instance v0, Lcom/google/zxing/client/android/DecodeThread;

    new-instance v1, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 60
    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 61
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 64
    iput-object p4, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 65
    invoke-virtual {p4}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 66
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 116
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->finish()V

    goto :goto_1

    .line 73
    :cond_1
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_1

    .line 77
    :cond_2
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "barcode_bitmap"

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 86
    :cond_4
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 87
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :goto_1
    return-void
.end method

.method public quitSynchronously()V
    .locals 3

    .line 97
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 99
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
