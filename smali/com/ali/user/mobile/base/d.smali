.class Lcom/ali/user/mobile/base/d;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Z

.field final synthetic c:Lcom/ali/user/mobile/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseActivity;Landroid/widget/Button;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/d;->c:Lcom/ali/user/mobile/base/BaseActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/base/d;->a:Landroid/widget/Button;

    iput-boolean p3, p0, Lcom/ali/user/mobile/base/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/d;->a:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/d;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
