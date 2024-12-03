.class public Lid/mobis/ScreenLock;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ScreenLock.java"

# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Screen Lock by mobis.id"
    iconName = "images/extension.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

# instance fields
.field public activity:Landroid/app/Activity;

# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 19
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 20
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lid/mobis/ScreenLock;->activity:Landroid/app/Activity;

    return-void
.end method

# virtual methods
.method public Lock()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide Status Bar"
    .end annotation

    .line 25
    iget-object v0, p0, Lid/mobis/ScreenLock;->activity:Landroid/app/Activity;
    
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    
    move-result-object v0
    
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    
    move-result-object v0
    
    const/16 v1, 0x1706
    
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public UnLock()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Status Bar"
    .end annotation

    .line 30
    iget-object v0, p0, Lid/mobis/ScreenLock;->activity:Landroid/app/Activity;
    
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    
    move-result-object v0
    
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    
    move-result-object v0
    
    const/4 v1, 0x0
    
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method