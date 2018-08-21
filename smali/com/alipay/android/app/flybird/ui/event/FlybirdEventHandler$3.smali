.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic val$json:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;->val$json:Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;->val$json:Lcom/alipay/android/app/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/plugin/b;->share(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V

    return-void
.end method
