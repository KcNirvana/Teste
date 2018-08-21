.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {v1}, Lcom/alipay/android/app/hardwarepay/base/d;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$msg:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/d$a;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "flybird_bl_val_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    return-void
.end method
