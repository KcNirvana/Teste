.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$000(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method
