.class final Lcom/google/appinventor/components/runtime/VideoPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPicker;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Open"

    if-eqz p2, :cond_1

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPicker;->BeforePicking()V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget p1, p1, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object p2, p1, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p2

    iput p2, p1, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/VideoPicker;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimation()Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPicker"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 67
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/VideoPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPicker;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {p2, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/VideoPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPicker;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {p2, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
