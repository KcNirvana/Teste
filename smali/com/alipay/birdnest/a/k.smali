.class final Lcom/alipay/birdnest/a/k;
.super Ljava/lang/Object;
.source "UiUtil.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplateKeyboardService;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/birdnest/a/k;->a:Z

    return-void
.end method


# virtual methods
.method public destroyKeyboard(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public hideKeyboard(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/i;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/alipay/birdnest/a/k;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/birdnest/a/k;->a:Z

    return v0
.end method

.method public showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p6}, Lcom/alipay/birdnest/a/i;->a(Landroid/widget/EditText;I)V

    iput-boolean v0, p0, Lcom/alipay/birdnest/a/k;->a:Z

    return v0
.end method
