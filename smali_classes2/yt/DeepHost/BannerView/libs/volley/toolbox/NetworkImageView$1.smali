.class Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    .line 252
    iput-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lyt/DeepHost/BannerView/libs/volley/VolleyError;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$000(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$000(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$100(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$200(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 274
    iget-boolean p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz p2, :cond_0

    .line 275
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    new-instance v0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1$1;-><init>(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 286
    iget-object p2, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$300(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$300(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$400(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 290
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$400(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$500(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 292
    iget-object p1, p0, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView$1;->this$0:Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->access$500(Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lyt/DeepHost/BannerView/libs/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method
