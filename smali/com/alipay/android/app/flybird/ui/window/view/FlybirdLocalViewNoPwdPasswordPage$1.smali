.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdPasswordPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "encryptType"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    iget-boolean v1, v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mSPassWordPay:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "spwd"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/safepaybase/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "{\"action\":{\"name\":\"/setting/pwdcheck\"}}"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pwd"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/safepaybase/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
