.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$300(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method
