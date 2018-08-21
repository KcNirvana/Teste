.class public abstract Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.super Ljava/lang/Object;
.source "FlybirdLocalViewPage.java"


# static fields
.field public static final NOPWD_CHECK_DATA:I = 0x1

.field public static final NOPWD_VALUE_DATA:I = 0x3

.field public static final SETTING_CHANNEL_DATA:I = 0x4

.field public static final SWITCH_AUTO_CHANNEL_DATA:I = 0x5

.field public static final USE_JFB_DATA:I = 0x2


# instance fields
.field protected mAuthAction:Lcom/alipay/android/app/json/JSONObject;

.field protected mBizId:I

.field protected mContext:Landroid/app/Activity;

.field public mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field protected mLocalView:Landroid/view/View;

.field protected mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

.field protected mSPassWordPay:Z

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mLocalView:Landroid/view/View;

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mBizId:I

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mSPassWordPay:Z

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mLocalView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getViewLayoutId()I
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mBizId:I

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mContext:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->getViewLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mLocalView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract onBack()Z
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveChangeDataBack(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "exitAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->h(Z)V

    :cond_0
    return-void
.end method

.method protected prepareSaveData(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "switch_nopwd"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v1, "nopwd_limit_default"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "switch_jfb"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "nopwd_limit_default"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "channel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "switch_auto"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    const-string/jumbo v1, "switch_auto"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_4
    return-object v0
.end method

.method public processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reShowSettingDialog()V
    .locals 0

    return-void
.end method

.method protected saveChangeData(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->prepareSaveData(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "{\"action\":{\"name\":\"/setting/save\"}}"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->viewName:Ljava/lang/String;

    return-void
.end method

.method public updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 4

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "spasswordPay"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "spasswordPay"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mSPassWordPay:Z

    :cond_0
    const-string/jumbo v1, "authAction"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "name"

    const-string/jumbo v3, "authAction"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "fpProtocolType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mAuthAction:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "fpProtocolType"

    const-string/jumbo v3, "fpProtocolType"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
