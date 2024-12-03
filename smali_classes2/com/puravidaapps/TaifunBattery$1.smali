.class Lcom/puravidaapps/TaifunBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "TaifunBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/puravidaapps/TaifunBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunBattery;


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunBattery;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 235
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$100(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$002(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$300(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$202(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "level"

    .line 239
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    .line 240
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-lez v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, v0

    invoke-static {v2, p1}, Lcom/puravidaapps/TaifunBattery;->access$402(Lcom/puravidaapps/TaifunBattery;I)I

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1, v1}, Lcom/puravidaapps/TaifunBattery;->access$402(Lcom/puravidaapps/TaifunBattery;I)I

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    const-string v0, "health"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$600(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$502(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$702(Lcom/puravidaapps/TaifunBattery;F)F

    .line 251
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/puravidaapps/TaifunBattery;->access$802(Lcom/puravidaapps/TaifunBattery;I)I

    .line 254
    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "technology"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/puravidaapps/TaifunBattery;->access$902(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {v0}, Lcom/puravidaapps/TaifunBattery;->access$000(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$200(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$400(Lcom/puravidaapps/TaifunBattery;)I

    move-result v3

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$500(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$700(Lcom/puravidaapps/TaifunBattery;)F

    move-result v5

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$800(Lcom/puravidaapps/TaifunBattery;)I

    move-result v6

    iget-object p1, p0, Lcom/puravidaapps/TaifunBattery$1;->this$0:Lcom/puravidaapps/TaifunBattery;

    invoke-static {p1}, Lcom/puravidaapps/TaifunBattery;->access$900(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/puravidaapps/TaifunBattery;->BatteryChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FILjava/lang/String;)V

    return-void
.end method
