.class public Lyt/DeepHost/BannerView/CustomViewHolder3;
.super Ljava/lang/Object;
.source "CustomViewHolder3.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyt/DeepHost/BannerView/libs/banner/holder/BannerViewHolder<",
        "Lyt/DeepHost/BannerView/CustomData;",
        ">;"
    }
.end annotation


# instance fields
.field public card_color:I

.field public card_elevation:I

.field public card_margin:I

.field public card_padding:I

.field public card_radius:I

.field public circle_icon:Z

.field public icon_border:I

.field public icon_border_color:I

.field public icon_margin_left:I

.field public icon_margin_right:I

.field public icon_size:I

.field public icon_visible:Z

.field public loading_icon:Ljava/lang/String;

.field public offline_icon:Ljava/lang/String;

.field public title_background:I

.field public title_color:I

.field public title_font:Landroid/graphics/Typeface;

.field public title_line:I

.field public title_size:I

.field public title_style:I


# direct methods
.method public constructor <init>(IIIIIZIIIIIZIIILandroid/graphics/Typeface;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    .line 30
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_radius:I

    const/4 v1, 0x5

    .line 31
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_elevation:I

    const/4 v1, 0x0

    .line 32
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_padding:I

    const/16 v2, 0x8

    .line 33
    iput v2, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_margin:I

    const/4 v2, -0x1

    .line 34
    iput v2, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_color:I

    const/16 v3, 0x10

    .line 37
    iput v3, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_size:I

    .line 38
    iput v2, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_color:I

    .line 39
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_background:I

    .line 40
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move v1, p1

    .line 57
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_radius:I

    move v1, p2

    .line 58
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_elevation:I

    move v1, p3

    .line 59
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_padding:I

    move v1, p4

    .line 60
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_margin:I

    move v1, p5

    .line 61
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_color:I

    move v1, p6

    .line 63
    iput-boolean v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->circle_icon:Z

    move v1, p7

    .line 64
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_border:I

    move v1, p8

    .line 65
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_border_color:I

    move v1, p9

    .line 66
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_size:I

    move v1, p10

    .line 67
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_left:I

    move v1, p11

    .line 68
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_right:I

    move/from16 v1, p12

    .line 69
    iput-boolean v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_visible:Z

    move/from16 v1, p13

    .line 71
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_size:I

    move/from16 v1, p14

    .line 72
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_color:I

    move/from16 v1, p15

    .line 73
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_background:I

    move-object/from16 v1, p16

    .line 74
    iput-object v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_font:Landroid/graphics/Typeface;

    move/from16 v1, p17

    .line 75
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_style:I

    move/from16 v1, p18

    .line 76
    iput v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_line:I

    move-object/from16 v1, p19

    .line 78
    iput-object v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->loading_icon:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 79
    iput-object v1, v0, Lyt/DeepHost/BannerView/CustomViewHolder3;->offline_icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 27
    check-cast p3, Lyt/DeepHost/BannerView/CustomData;

    invoke-virtual {p0, p1, p2, p3}, Lyt/DeepHost/BannerView/CustomViewHolder3;->createView(Landroid/content/Context;ILyt/DeepHost/BannerView/CustomData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;ILyt/DeepHost/BannerView/CustomData;)Landroid/view/View;
    .locals 12

    .line 87
    new-instance p2, Lyt/DeepHost/BannerView/design_size;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/design_size;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;

    invoke-direct {v0, p1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    iget v3, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_margin:I

    invoke-virtual {p2, v3}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v3

    .line 92
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 95
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_radius:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardRadius(F)V

    .line 96
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_elevation:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardElevation(F)V

    .line 97
    iget v1, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_padding:I

    invoke-virtual {p2, v1}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v1

    .line 98
    iget v3, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->card_color:I

    invoke-virtual {v0, v3}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardBackgroundColor(I)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x11

    .line 104
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800053

    .line 112
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 116
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v7, 0x800013

    .line 117
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    iget v7, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_background:I

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v7, 0xa

    .line 119
    invoke-virtual {p2, v7}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v8

    invoke-virtual {p2, v7}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v9

    invoke-virtual {p2, v7}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v7

    invoke-virtual {v4, v8, v9, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 120
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-boolean v7, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_visible:Z

    if-eqz v7, :cond_1

    .line 128
    iget-boolean v7, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->circle_icon:Z

    if-eqz v7, :cond_0

    .line 129
    new-instance v7, Lyt/DeepHost/BannerView/libs/CircleImageView;

    invoke-direct {v7, p1}, Lyt/DeepHost/BannerView/libs/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_size:I

    invoke-virtual {p2, v10}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v10

    iget v11, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_size:I

    invoke-virtual {p2, v11}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    iget v10, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_left:I

    invoke-virtual {p2, v10}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v10

    iget v11, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_right:I

    invoke-virtual {p2, v11}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v11

    invoke-virtual {v9, v10, v6, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 132
    invoke-virtual {v7, v9}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_border:I

    invoke-virtual {p2, v6}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result p2

    invoke-virtual {v7, p2}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setBorderWidth(I)V

    .line 134
    iget p2, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_border_color:I

    invoke-virtual {v7, p2}, Lyt/DeepHost/BannerView/libs/CircleImageView;->setBorderColor(I)V

    .line 136
    invoke-virtual {p3}, Lyt/DeepHost/BannerView/CustomData;->getIcon()Ljava/lang/String;

    move-result-object p2

    iget-object v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->loading_icon:Ljava/lang/String;

    iget-object v9, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->offline_icon:Ljava/lang/String;

    invoke-static {p1, v7, p2, v6, v9}, Lyt/DeepHost/BannerView/libs/volley/ViewUtil;->setCircleImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v7, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-direct {v7, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_size:I

    invoke-virtual {p2, v10}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v10

    iget v11, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_size:I

    invoke-virtual {p2, v11}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    iget v10, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_left:I

    invoke-virtual {p2, v10}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result v10

    iget v11, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->icon_margin_right:I

    invoke-virtual {p2, v11}, Lyt/DeepHost/BannerView/design_size;->getPixels(I)I

    move-result p2

    invoke-virtual {v9, v10, v6, p2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {v7, v9}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p3}, Lyt/DeepHost/BannerView/CustomData;->getIcon()Ljava/lang/String;

    move-result-object p2

    iget-object v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->loading_icon:Ljava/lang/String;

    iget-object v9, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->offline_icon:Ljava/lang/String;

    invoke-static {p1, v7, p2, v6, v9}, Lyt/DeepHost/BannerView/libs/volley/ViewUtil;->setImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_1
    :goto_0
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "Title 1"

    .line 155
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_color:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_font:Landroid/graphics/Typeface;

    iget v7, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_style:I

    invoke-virtual {p2, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 158
    iget v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_size:I

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    iget v6, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->title_line:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 161
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 163
    invoke-virtual {p3}, Lyt/DeepHost/BannerView/CustomData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    new-instance p2, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-direct {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {p2, v4}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {p3}, Lyt/DeepHost/BannerView/CustomData;->getImage()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->loading_icon:Ljava/lang/String;

    iget-object v4, p0, Lyt/DeepHost/BannerView/CustomViewHolder3;->offline_icon:Ljava/lang/String;

    invoke-static {p1, p2, p3, v2, v4}, Lyt/DeepHost/BannerView/libs/volley/ViewUtil;->setImageURL(Landroid/content/Context;Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v0, v3}, Lyt/DeepHost/BannerView/libs/cardview/MyCardView;->setCardView(Landroid/view/View;)V

    return-object v0
.end method
