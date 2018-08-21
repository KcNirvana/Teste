.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.source "FlybirdLocalViewNoPwdPasswordPage.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEditText:Landroid/widget/EditText;

.field private paramJson:Lcom/alipay/android/app/json/JSONObject;

.field private safeInputContext:Lcom/alipay/android/app/safepaybase/c;

.field private util:Lcom/alipay/android/app/ui/a/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->paramJson:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/b/e/a;->a()Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->util:Lcom/alipay/android/app/ui/a/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private initPwdInputView()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "safe_input_container"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/app/safepaybase/c;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mSPassWordPay:Z

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/app/safepaybase/c;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/c;->a(Lcom/alipay/android/app/safepaybase/b;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/c;->a(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/c;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    sget-object v2, Lcom/alipay/android/app/pay/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/c;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->safeInputContext:Lcom/alipay/android/app/safepaybase/c;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/c;->d()V

    :cond_0
    return-void
.end method

.method public doSubmit()V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getViewLayoutId()I
    .locals 1

    const-string/jumbo v0, "setting_activity_nopwd_pwdcheck"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "flybird_find_pwd"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$5;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBack()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->util:Lcom/alipay/android/app/ui/a/a/a;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/a/a/a;->b(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "nopwd_icons_url"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    const-string/jumbo v3, "nopwd_icons_url"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Lcom/alipay/android/app/json/JSONArray;)V

    :cond_1
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "setting-detail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->e(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, "setting-detail"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->nextView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "nopwd_limit"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->initPwdInputView()V

    goto :goto_0
.end method
