.class public Lcom/puravidaapps/TaifunBattery;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunBattery.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Battery Manager extension. Version 2 as of 2019-03-11 for App Inventor version nb175 and Companion version 2.51."
    helpUrl = "https://puravidaapps.com/battery.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunBattery"

.field public static final VERSION:I = 0x2


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private health:Ljava/lang/String;

.field private level:I

.field private listening:Z

.field private plugged:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private technology:Ljava/lang/String;

.field private temperature:F

.field private voltage:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "unknown"

    .line 45
    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->status:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->plugged:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/puravidaapps/TaifunBattery;->level:I

    .line 48
    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->health:Ljava/lang/String;

    const/4 v2, 0x0

    .line 49
    iput v2, p0, Lcom/puravidaapps/TaifunBattery;->temperature:F

    .line 50
    iput v1, p0, Lcom/puravidaapps/TaifunBattery;->voltage:I

    .line 51
    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->technology:Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/puravidaapps/TaifunBattery$1;

    invoke-direct {v0, p0}, Lcom/puravidaapps/TaifunBattery$1;-><init>(Lcom/puravidaapps/TaifunBattery;)V

    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 56
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 57
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 58
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->activity:Landroid/app/Activity;

    .line 61
    invoke-direct {p0}, Lcom/puravidaapps/TaifunBattery;->startListeningBattery()V

    const-string p1, "TaifunBattery"

    const-string v0, "TaifunBattery Created"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/puravidaapps/TaifunBattery;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/puravidaapps/TaifunBattery;->getStatus(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/puravidaapps/TaifunBattery;->plugged:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->plugged:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/puravidaapps/TaifunBattery;->getPlugged(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/puravidaapps/TaifunBattery;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/puravidaapps/TaifunBattery;->level:I

    return p0
.end method

.method static synthetic access$402(Lcom/puravidaapps/TaifunBattery;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/puravidaapps/TaifunBattery;->level:I

    return p1
.end method

.method static synthetic access$500(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/puravidaapps/TaifunBattery;->health:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->health:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/puravidaapps/TaifunBattery;I)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/puravidaapps/TaifunBattery;->getHealth(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/puravidaapps/TaifunBattery;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/puravidaapps/TaifunBattery;->temperature:F

    return p0
.end method

.method static synthetic access$702(Lcom/puravidaapps/TaifunBattery;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/puravidaapps/TaifunBattery;->temperature:F

    return p1
.end method

.method static synthetic access$800(Lcom/puravidaapps/TaifunBattery;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/puravidaapps/TaifunBattery;->voltage:I

    return p0
.end method

.method static synthetic access$802(Lcom/puravidaapps/TaifunBattery;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/puravidaapps/TaifunBattery;->voltage:I

    return p1
.end method

.method static synthetic access$900(Lcom/puravidaapps/TaifunBattery;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/puravidaapps/TaifunBattery;->technology:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/puravidaapps/TaifunBattery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/puravidaapps/TaifunBattery;->technology:Ljava/lang/String;

    return-object p1
.end method

.method private getHealth(I)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "cold"

    goto :goto_0

    :pswitch_1
    const-string v0, "unspecified failure"

    goto :goto_0

    :pswitch_2
    const-string v0, "over voltage"

    goto :goto_0

    :pswitch_3
    const-string v0, "dead"

    goto :goto_0

    :pswitch_4
    const-string v0, "overheat"

    goto :goto_0

    :pswitch_5
    const-string v0, "good"

    :goto_0
    :pswitch_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPlugged(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "wireless"

    goto :goto_0

    :cond_1
    const-string p1, "usb"

    goto :goto_0

    :cond_2
    const-string p1, "ac"

    :goto_0
    return-object p1
.end method

.method private getStatus(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "full"

    goto :goto_0

    :cond_1
    const-string p1, "not charging"

    goto :goto_0

    :cond_2
    const-string p1, "discharging"

    goto :goto_0

    :cond_3
    const-string p1, "charging"

    :goto_0
    return-object p1
.end method

.method private startListeningBattery()V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunBattery;->listening:Z

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/puravidaapps/TaifunBattery;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/puravidaapps/TaifunBattery;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunBattery;->listening:Z

    :cond_0
    return-void
.end method

.method private stopListeningBattery()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunBattery;->listening:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/puravidaapps/TaifunBattery;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunBattery;->listening:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public BatteryChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that battery changed."
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaifunBattery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 340
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 341
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const-string p1, "BatteryChanged"

    .line 340
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Capacity()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns remaining battery capacity as an integer percentage of total capacity (with no fractional part). Requires API Level 21, Android 5, Lollipop."
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const-wide/16 v1, 0x0

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 197
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x4

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 200
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public ChargeCounter()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Battery capacity in microampere-hours, as an integer. Requires API Level 21, Android 5, Lollipop."
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const-wide/16 v1, 0x0

    .line 210
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 214
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public CurrentAvg()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns average battery current in microamperes, as an integer. Positive values indicate net current entering the battery from a charge source, negative values indicate net current discharging from the battery. The time period over which the average is computed may depend on the fuel gauge hardware and its configuration. Requires API Level 21, Android 5, Lollipop."
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const-wide/16 v1, 0x0

    .line 181
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x3

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public CurrentNow()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Instantaneous battery current in microamperes, as an integer. Positive values indicate net current entering the battery from a charge source, negative values indicate net current discharging from the battery. Requires API Level 21, Android 5, Lollipop."
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const-wide/16 v1, 0x0

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 164
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x2

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public EnergyCounter()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Battery remaining energy in nanowatt-hours, as a long integer. Requires API Level 21, Android 5, Lollipop."
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const-wide/16 v1, 0x0

    .line 224
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x5

    .line 226
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 228
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public Health()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current health constant. Possible values are: cold, dead, good, overheat, over voltage, unknown, unspecified failure."
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->health:Ljava/lang/String;

    return-object v0
.end method

.method public Level()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery level. Possible values are between 0 and 100."
    .end annotation

    .line 111
    iget v0, p0, Lcom/puravidaapps/TaifunBattery;->level:I

    return v0
.end method

.method public Plugged()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery plugged status. Possible values are: usb, ac, wireless or unknown."
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->plugged:Ljava/lang/String;

    return-object v0
.end method

.method public Status()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery status. Possible values are: charging, full, discharging, not charging or unknown."
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->status:Ljava/lang/String;

    return-object v0
.end method

.method public Technology()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery technology."
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/puravidaapps/TaifunBattery;->technology:Ljava/lang/String;

    return-object v0
.end method

.method public Temperature()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery temperature in celcius."
    .end annotation

    .line 132
    iget v0, p0, Lcom/puravidaapps/TaifunBattery;->temperature:F

    return v0
.end method

.method public Voltage()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the battery voltage level in millivolts."
    .end annotation

    .line 142
    iget v0, p0, Lcom/puravidaapps/TaifunBattery;->voltage:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TaifunBattery"

    const-string v1, "onDestroy"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/puravidaapps/TaifunBattery;->stopListeningBattery()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/puravidaapps/TaifunBattery;->startListeningBattery()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/puravidaapps/TaifunBattery;->stopListeningBattery()V

    return-void
.end method
