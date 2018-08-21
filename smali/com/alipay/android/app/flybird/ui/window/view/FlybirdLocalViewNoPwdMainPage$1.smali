.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdMainPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "nativeValidate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, "setting-nopwd-password"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->nextView(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, "setting-detail"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->nextView(Ljava/lang/String;)V

    goto :goto_0
.end method
