.class Lcom/ali/user/mobile/ui/widget/b;
.super Ljava/lang/Object;
.source "APBladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/APBladeView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/APBladeView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/b;->a:Lcom/ali/user/mobile/ui/widget/APBladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/b;->a:Lcom/ali/user/mobile/ui/widget/APBladeView;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APBladeView;->access$000(Lcom/ali/user/mobile/ui/widget/APBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/b;->a:Lcom/ali/user/mobile/ui/widget/APBladeView;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APBladeView;->access$000(Lcom/ali/user/mobile/ui/widget/APBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
