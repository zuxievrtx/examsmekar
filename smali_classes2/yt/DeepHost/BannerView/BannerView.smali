.class public final Lyt/DeepHost/BannerView/BannerView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BannerView.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>DeepHost (AndroidX) - Banner View Extension<br><br> <a href = \"https://www.youtube.com/c/DeepHost\" target = \"_blank\">Youtube Channel Link</a> </a></p>"
    iconName = "aiwebres/icon.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field public static final VERSION:I = 0x1

.field public static container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private auto_play:Z

.field private banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

.field public card_color:I

.field public card_elevation:I

.field public card_margin:I

.field public card_padding:I

.field public card_radius:I

.field public circle_icon:Z

.field private context:Landroid/content/Context;

.field public customViewHolder1:Lyt/DeepHost/BannerView/CustomViewHolder1;

.field public customViewHolder2:Lyt/DeepHost/BannerView/CustomViewHolder2;

.field public customViewHolder3:Lyt/DeepHost/BannerView/CustomViewHolder3;

.field private delay_time:I

.field public icon_border:I

.field public icon_border_color:I

.field public icon_margin_left:I

.field public icon_margin_right:I

.field public icon_size:I

.field public icon_visible:Z

.field private indicator_gravity:I

.field private indicator_margin:I

.field public indicator_selected_color:I

.field private indicator_size:I

.field public indicator_unselected_color:I

.field public indicator_visible:Z

.field public loading_icon:Ljava/lang/String;

.field private loop:Z

.field public offline_icon:Ljava/lang/String;

.field private size:Lyt/DeepHost/BannerView/design_size;

.field public str_icons:[Ljava/lang/String;

.field public text_color:I

.field public text_font:Landroid/graphics/Typeface;

.field public text_line:I

.field public text_size:I

.field public text_style:I

.field public title_background:I

.field public title_color:I

.field public title_font:Landroid/graphics/Typeface;

.field public title_line:I

.field public title_size:I

.field public title_style:I

.field public transformer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 119
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/BannerView;->loop:Z

    const/4 v1, 0x6

    .line 65
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    .line 66
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/BannerView;->auto_play:Z

    const/16 v1, 0x7d0

    .line 67
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->delay_time:I

    const/16 v1, 0xa

    .line 68
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_size:I

    .line 69
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_margin:I

    .line 70
    sget-object v2, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Default:Ljava/lang/Class;

    iput-object v2, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    const v2, -0x333334

    .line 71
    iput v2, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_selected_color:I

    const v2, -0x777778

    .line 72
    iput v2, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_unselected_color:I

    .line 73
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_visible:Z

    const/16 v3, 0x14

    .line 82
    iput v3, p0, Lyt/DeepHost/BannerView/BannerView;->card_radius:I

    const/4 v3, 0x5

    .line 83
    iput v3, p0, Lyt/DeepHost/BannerView/BannerView;->card_elevation:I

    const/4 v3, 0x0

    .line 84
    iput v3, p0, Lyt/DeepHost/BannerView/BannerView;->card_padding:I

    const/16 v4, 0x8

    .line 85
    iput v4, p0, Lyt/DeepHost/BannerView/BannerView;->card_margin:I

    const/4 v4, -0x1

    .line 86
    iput v4, p0, Lyt/DeepHost/BannerView/BannerView;->card_color:I

    .line 88
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/BannerView;->circle_icon:Z

    const/4 v5, 0x2

    .line 89
    iput v5, p0, Lyt/DeepHost/BannerView/BannerView;->icon_border:I

    const/high16 v5, -0x10000

    .line 90
    iput v5, p0, Lyt/DeepHost/BannerView/BannerView;->icon_border_color:I

    const/16 v5, 0x2d

    .line 91
    iput v5, p0, Lyt/DeepHost/BannerView/BannerView;->icon_size:I

    .line 92
    iput v3, p0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_left:I

    .line 93
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_right:I

    .line 94
    iput-boolean v0, p0, Lyt/DeepHost/BannerView/BannerView;->icon_visible:Z

    const/16 v1, 0x12

    .line 98
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->text_size:I

    .line 99
    iput v2, p0, Lyt/DeepHost/BannerView/BannerView;->text_color:I

    .line 100
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;

    .line 101
    iput v0, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    const/4 v1, 0x3

    .line 102
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->text_line:I

    const/16 v1, 0x10

    .line 104
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->title_size:I

    .line 105
    iput v4, p0, Lyt/DeepHost/BannerView/BannerView;->title_color:I

    .line 106
    iput v3, p0, Lyt/DeepHost/BannerView/BannerView;->title_background:I

    .line 107
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;

    .line 108
    iput v0, p0, Lyt/DeepHost/BannerView/BannerView;->title_line:I

    .line 109
    iput v0, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    const-string v1, ""

    .line 112
    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->loading_icon:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->offline_icon:Ljava/lang/String;

    .line 120
    sput-object p1, Lyt/DeepHost/BannerView/BannerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 121
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    .line 122
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->activity:Landroid/app/Activity;

    .line 123
    new-instance v1, Lyt/DeepHost/BannerView/design_size;

    iget-object v2, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lyt/DeepHost/BannerView/design_size;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->size:Lyt/DeepHost/BannerView/design_size;

    .line 126
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 127
    sput-boolean v0, Lyt/DeepHost/BannerView/Layout/isReple;->isRepl:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Animation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorArgs = {
            "Accordion",
            "BackgroundToForeground",
            "ForegroundToBackground",
            "CubeIn",
            "CubeOut",
            "DepthPage",
            "FlipHorizontal",
            "FlipVertical",
            "RotateDown",
            "RotateUp",
            "ScaleInOut",
            "Scale",
            "ScaleRight",
            "Stack",
            "Tablet",
            "ZoomIn",
            "ZoomOut",
            "ZoomOutSlide",
            "Default"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Animation Type - Default, Accordion, BackgroundToForeground, ForegroundToBackground, CubeIn, CubeOut, DepthPage, FlipHorizontal, FlipVertical, RotateDown, RotateUp, ScaleInOut, Scale, ScaleRight, Stack, Tablet, ZoomIn, ZoomOut, ZoomOutSlide"
    .end annotation

    const-string v0, "Default"

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Default:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_0
    const-string v0, "Accordion"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Accordion:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    const-string v0, "BackgroundToForeground"

    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->BackgroundToForeground:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_2
    const-string v0, "ForegroundToBackground"

    .line 487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ForegroundToBackground:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_3
    const-string v0, "CubeIn"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->CubeIn:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_4
    const-string v0, "CubeOut"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->CubeOut:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_5
    const-string v0, "DepthPage"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->DepthPage:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_6
    const-string v0, "FlipHorizontal"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 496
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->FlipHorizontal:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_7
    const-string v0, "FlipVertical"

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 498
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->FlipVertical:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_8
    const-string v0, "RotateDown"

    .line 499
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 500
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->RotateDown:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_9
    const-string v0, "RotateUp"

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 502
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->RotateUp:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_a
    const-string v0, "ScaleInOut"

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 504
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ScaleInOut:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_b
    const-string v0, "Scale"

    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 506
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Scale:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_c
    const-string v0, "ScaleRight"

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 508
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ScaleRight:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_d
    const-string v0, "Stack"

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 510
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Stack:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_e
    const-string v0, "Tablet"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 512
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Tablet:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_f
    const-string v0, "ZoomIn"

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 514
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ZoomIn:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_10
    const-string v0, "ZoomOut"

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ZoomOut:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    :cond_11
    const-string v0, "ZoomOutSlide"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 518
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->ZoomOutSlide:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    goto :goto_0

    .line 520
    :cond_12
    sget-object p1, Lyt/DeepHost/BannerView/libs/banner/Transformer;->Default:Ljava/lang/Class;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public AppInventor(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 137
    sput-boolean p1, Lyt/DeepHost/BannerView/Layout/isReple;->appInventor:Z

    return-void
.end method

.method public AutoPlay(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 152
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/BannerView;->auto_play:Z

    return-void
.end method

.method public CardView_Color(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 217
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->card_color:I

    return-void
.end method

.method public CardView_Elevation(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->card_elevation:I

    return-void
.end method

.method public CardView_Margin(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 210
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->card_margin:I

    return-void
.end method

.method public CardView_Padding(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 203
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->card_padding:I

    return-void
.end method

.method public CardView_Radius(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "20"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 189
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->card_radius:I

    return-void
.end method

.method public Circle_Icon(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 264
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/BannerView;->circle_icon:Z

    return-void
.end method

.method public Create_Image(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 558
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 562
    new-instance p2, Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 563
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->delay_time:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setDelayTime(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 566
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v1, p0, Lyt/DeepHost/BannerView/BannerView;->auto_play:Z

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setAutoPlay(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 567
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v1, p0, Lyt/DeepHost/BannerView/BannerView;->loop:Z

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLoop(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 568
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_size:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSize(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 569
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorGravity(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 570
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_selected_color:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 571
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_unselected_color:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorUnSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 572
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_margin:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorMargin(I)V

    .line 574
    iget-boolean p2, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_visible:Z

    if-nez p2, :cond_0

    .line 575
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerStyle(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 578
    :cond_0
    new-instance p2, Lyt/DeepHost/BannerView/CustomViewHolder1;

    iget v3, p0, Lyt/DeepHost/BannerView/BannerView;->card_radius:I

    iget v4, p0, Lyt/DeepHost/BannerView/BannerView;->card_elevation:I

    iget v5, p0, Lyt/DeepHost/BannerView/BannerView;->card_padding:I

    iget v6, p0, Lyt/DeepHost/BannerView/BannerView;->card_margin:I

    iget v7, p0, Lyt/DeepHost/BannerView/BannerView;->card_color:I

    iget-object v8, p0, Lyt/DeepHost/BannerView/BannerView;->loading_icon:Ljava/lang/String;

    iget-object v9, p0, Lyt/DeepHost/BannerView/BannerView;->offline_icon:Ljava/lang/String;

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lyt/DeepHost/BannerView/CustomViewHolder1;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->customViewHolder1:Lyt/DeepHost/BannerView/CustomViewHolder1;

    .line 580
    iget-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v1, v0, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setPages(Ljava/util/List;Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    .line 581
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOffscreenPageLimit(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    iget-object v0, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    .line 582
    invoke-virtual {p2, v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    .line 583
    invoke-virtual {p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->start()Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 585
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 586
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 587
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 589
    iget-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance p2, Lyt/DeepHost/BannerView/BannerView$1;

    invoke-direct {p2, p0}, Lyt/DeepHost/BannerView/BannerView$1;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnBannerClickListener(Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 596
    iget-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance p2, Lyt/DeepHost/BannerView/BannerView$2;

    invoke-direct {p2, p0}, Lyt/DeepHost/BannerView/BannerView$2;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public Create_Text(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 621
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 625
    new-instance p2, Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 626
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->delay_time:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setDelayTime(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 629
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v1, p0, Lyt/DeepHost/BannerView/BannerView;->auto_play:Z

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setAutoPlay(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 630
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v1, p0, Lyt/DeepHost/BannerView/BannerView;->loop:Z

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLoop(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 631
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_size:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSize(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 632
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorGravity(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 633
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_selected_color:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 634
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_unselected_color:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorUnSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 635
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_margin:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorMargin(I)V

    .line 637
    iget-boolean p2, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_visible:Z

    if-nez p2, :cond_0

    .line 638
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerStyle(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 641
    :cond_0
    new-instance p2, Lyt/DeepHost/BannerView/CustomViewHolder2;

    iget v3, p0, Lyt/DeepHost/BannerView/BannerView;->card_radius:I

    iget v4, p0, Lyt/DeepHost/BannerView/BannerView;->card_elevation:I

    iget v5, p0, Lyt/DeepHost/BannerView/BannerView;->card_padding:I

    iget v6, p0, Lyt/DeepHost/BannerView/BannerView;->card_margin:I

    iget v7, p0, Lyt/DeepHost/BannerView/BannerView;->card_color:I

    iget v8, p0, Lyt/DeepHost/BannerView/BannerView;->text_size:I

    iget v9, p0, Lyt/DeepHost/BannerView/BannerView;->text_color:I

    iget-object v10, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;

    iget v11, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    iget v12, p0, Lyt/DeepHost/BannerView/BannerView;->text_line:I

    move-object v2, p2

    invoke-direct/range {v2 .. v12}, Lyt/DeepHost/BannerView/CustomViewHolder2;-><init>(IIIIIIILandroid/graphics/Typeface;II)V

    iput-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->customViewHolder2:Lyt/DeepHost/BannerView/CustomViewHolder2;

    .line 643
    iget-object v1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v1, v0, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setPages(Ljava/util/List;Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    .line 644
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOffscreenPageLimit(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    iget-object v0, p0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    .line 645
    invoke-virtual {p2, v0}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object p2

    .line 646
    invoke-virtual {p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->start()Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 648
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 649
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 650
    iget-object p2, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 652
    iget-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance p2, Lyt/DeepHost/BannerView/BannerView$3;

    invoke-direct {p2, p0}, Lyt/DeepHost/BannerView/BannerView$3;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnBannerClickListener(Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 659
    iget-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance p2, Lyt/DeepHost/BannerView/BannerView$4;

    invoke-direct {p2, p0}, Lyt/DeepHost/BannerView/BannerView$4;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public Create_Title(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 28
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object/from16 v0, p0

    .line 685
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 687
    iget-boolean v2, v0, Lyt/DeepHost/BannerView/BannerView;->icon_visible:Z

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lyt/DeepHost/BannerView/BannerView;->str_icons:[Ljava/lang/String;

    .line 691
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 695
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 697
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 699
    iget-boolean v6, v0, Lyt/DeepHost/BannerView/BannerView;->icon_visible:Z

    if-eqz v6, :cond_1

    .line 700
    new-instance v6, Lyt/DeepHost/BannerView/CustomData;

    aget-object v7, v1, v5

    iget-object v8, v0, Lyt/DeepHost/BannerView/BannerView;->str_icons:[Ljava/lang/String;

    aget-object v8, v8, v5

    aget-object v9, v2, v5

    invoke-direct {v6, v7, v8, v9}, Lyt/DeepHost/BannerView/CustomData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    :cond_1
    new-instance v6, Lyt/DeepHost/BannerView/CustomData;

    aget-object v7, v1, v5

    aget-object v8, v2, v5

    const-string v9, ""

    invoke-direct {v6, v7, v9, v8}, Lyt/DeepHost/BannerView/CustomData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :goto_1
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 708
    new-instance v6, Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-object v7, v0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 709
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->delay_time:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setDelayTime(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 712
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v7, v0, Lyt/DeepHost/BannerView/BannerView;->auto_play:Z

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setAutoPlay(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 713
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget-boolean v7, v0, Lyt/DeepHost/BannerView/BannerView;->loop:Z

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setLoop(Z)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 714
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_size:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSize(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 715
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorGravity(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 716
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_selected_color:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 717
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_unselected_color:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorUnSelectedColor(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 718
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    iget v7, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_margin:I

    invoke-virtual {v6, v7}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setIndicatorMargin(I)V

    .line 720
    iget-boolean v6, v0, Lyt/DeepHost/BannerView/BannerView;->indicator_visible:Z

    if-nez v6, :cond_2

    .line 721
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v6, v4}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerStyle(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 724
    :cond_2
    new-instance v6, Lyt/DeepHost/BannerView/CustomViewHolder3;

    move-object v7, v6

    iget v8, v0, Lyt/DeepHost/BannerView/BannerView;->card_radius:I

    iget v9, v0, Lyt/DeepHost/BannerView/BannerView;->card_elevation:I

    iget v10, v0, Lyt/DeepHost/BannerView/BannerView;->card_padding:I

    iget v11, v0, Lyt/DeepHost/BannerView/BannerView;->card_margin:I

    iget v12, v0, Lyt/DeepHost/BannerView/BannerView;->card_color:I

    iget-boolean v13, v0, Lyt/DeepHost/BannerView/BannerView;->circle_icon:Z

    iget v14, v0, Lyt/DeepHost/BannerView/BannerView;->icon_border:I

    iget v15, v0, Lyt/DeepHost/BannerView/BannerView;->icon_border_color:I

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->icon_size:I

    move/from16 v16, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_left:I

    move/from16 v17, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_right:I

    move/from16 v18, v4

    iget-boolean v4, v0, Lyt/DeepHost/BannerView/BannerView;->icon_visible:Z

    move/from16 v19, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_size:I

    move/from16 v20, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_color:I

    move/from16 v21, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_background:I

    move/from16 v22, v4

    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;

    move-object/from16 v23, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    move/from16 v24, v4

    iget v4, v0, Lyt/DeepHost/BannerView/BannerView;->title_line:I

    move/from16 v25, v4

    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->loading_icon:Ljava/lang/String;

    move-object/from16 v26, v4

    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->offline_icon:Ljava/lang/String;

    move-object/from16 v27, v4

    invoke-direct/range {v7 .. v27}, Lyt/DeepHost/BannerView/CustomViewHolder3;-><init>(IIIIIZIIIIIZIIILandroid/graphics/Typeface;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->customViewHolder3:Lyt/DeepHost/BannerView/CustomViewHolder3;

    .line 726
    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v4, v3, v6}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setPages(Ljava/util/List;Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object v4

    .line 727
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOffscreenPageLimit(I)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object v4

    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->transformer:Ljava/lang/Class;

    .line 728
    invoke-virtual {v4, v6}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    move-result-object v4

    .line 729
    invoke-virtual {v4}, Lyt/DeepHost/BannerView/libs/banner/Banner;->start()Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 732
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 733
    iget-object v6, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 735
    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance v6, Lyt/DeepHost/BannerView/BannerView$5;

    invoke-direct {v6, v0}, Lyt/DeepHost/BannerView/BannerView$5;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {v4, v6}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnBannerClickListener(Lyt/DeepHost/BannerView/libs/banner/listener/OnBannerClickListener;)Lyt/DeepHost/BannerView/libs/banner/Banner;

    .line 742
    iget-object v4, v0, Lyt/DeepHost/BannerView/BannerView;->banner:Lyt/DeepHost/BannerView/libs/banner/Banner;

    new-instance v6, Lyt/DeepHost/BannerView/BannerView$6;

    invoke-direct {v6, v0}, Lyt/DeepHost/BannerView/BannerView$6;-><init>(Lyt/DeepHost/BannerView/BannerView;)V

    invoke-virtual {v4, v6}, Lyt/DeepHost/BannerView/libs/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public DelayTime(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 144
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->delay_time:I

    return-void
.end method

.method public Icon_Border(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 226
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_border:I

    return-void
.end method

.method public Icon_Border_Color(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF0000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 233
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_border_color:I

    return-void
.end method

.method public Icon_Margin_Left(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 248
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_left:I

    return-void
.end method

.method public Icon_Margin_Right(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 255
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_margin_right:I

    return-void
.end method

.method public Icon_Size(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "45"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 241
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_size:I

    return-void
.end method

.method public Icon_Visible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 272
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/BannerView;->icon_visible:Z

    return-void
.end method

.method public IndicatorGravity(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Center"
        editorArgs = {
            "Left",
            "Right",
            "Center"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gravity Type - Left, Right, Center"
    .end annotation

    const-string v0, "Center"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 448
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    goto :goto_0

    :cond_0
    const-string v0, "Left"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    .line 450
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    goto :goto_0

    :cond_1
    const-string v0, "Right"

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 452
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    goto :goto_0

    .line 454
    :cond_2
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_gravity:I

    :goto_0
    return-void
.end method

.method public IndicatorMargin(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 182
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_margin:I

    return-void
.end method

.method public IndicatorSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 430
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_selected_color:I

    return-void
.end method

.method public IndicatorSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 175
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_size:I

    return-void
.end method

.method public IndicatorUnSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 437
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_unselected_color:I

    return-void
.end method

.method public IndicatorVisible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 168
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/BannerView;->indicator_visible:Z

    return-void
.end method

.method public Loading_Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 544
    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->loading_icon:Ljava/lang/String;

    return-void
.end method

.method public Loop(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 161
    iput-boolean p1, p0, Lyt/DeepHost/BannerView/BannerView;->loop:Z

    return-void
.end method

.method public Offline_Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 551
    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->offline_icon:Ljava/lang/String;

    return-void
.end method

.method public Text_Color(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 343
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_color:I

    return-void
.end method

.method public Text_Font(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 296
    :try_start_0
    sget-boolean v0, Lyt/DeepHost/BannerView/Layout/isReple;->isRepl:Z

    if-eqz v0, :cond_1

    .line 298
    sget-boolean v0, Lyt/DeepHost/BannerView/Layout/isReple;->appInventor:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/Kodular/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_font:Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method

.method public Text_Line(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 289
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_line:I

    return-void
.end method

.method public Text_Size(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 282
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_size:I

    return-void
.end method

.method public Text_Style(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "BOLD"
        editorArgs = {
            "BOLD ITALIC",
            "ITALIC",
            "NORMAL",
            "BOLD"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gravity Type - BOLD, BOLD ITALIC, ITALIC, NORMAL"
    .end annotation

    const-string v0, "BOLD"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 327
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    goto :goto_0

    :cond_0
    const-string v0, "BOLD ITALIC"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 329
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    goto :goto_0

    :cond_1
    const-string v0, "ITALIC"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 331
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    goto :goto_0

    :cond_2
    const-string v0, "NORMAL"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 333
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    goto :goto_0

    .line 335
    :cond_3
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->text_style:I

    :goto_0
    return-void
.end method

.method public Title_Background(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 422
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_background:I

    return-void
.end method

.method public Title_Color(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 415
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_color:I

    return-void
.end method

.method public Title_Font(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 367
    :try_start_0
    sget-boolean v0, Lyt/DeepHost/BannerView/Layout/isReple;->isRepl:Z

    if-eqz v0, :cond_1

    .line 369
    sget-boolean v0, Lyt/DeepHost/BannerView/Layout/isReple;->appInventor:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/Kodular/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lyt/DeepHost/BannerView/BannerView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_font:Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method

.method public Title_Line(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 360
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_line:I

    return-void
.end method

.method public Title_Size(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 353
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_size:I

    return-void
.end method

.method public Title_Style(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "BOLD"
        editorArgs = {
            "BOLD ITALIC",
            "ITALIC",
            "NORMAL",
            "BOLD"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Title Style - BOLD, BOLD ITALIC, ITALIC, NORMAL"
    .end annotation

    const-string v0, "BOLD"

    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 398
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    goto :goto_0

    :cond_0
    const-string v0, "BOLD ITALIC"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 400
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    goto :goto_0

    :cond_1
    const-string v0, "ITALIC"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 402
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    goto :goto_0

    :cond_2
    const-string v0, "NORMAL"

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 404
    iput p1, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    goto :goto_0

    .line 406
    :cond_3
    iput v1, p0, Lyt/DeepHost/BannerView/BannerView;->title_style:I

    :goto_0
    return-void
.end method

.method public onBannerClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const-string p1, "onBannerClick"

    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageScrolled(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    .line 532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const-string p1, "onPageScrolled"

    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const-string p1, "onPageSelected"

    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
