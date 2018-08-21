.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.source "FlybirdLocalViewSettingMain.java"


# static fields
.field public static final SETTING_BAOXIAN_URL:Ljava/lang/String; = "alipays://platformapi/startapp?appId=20000067&url=https://baoxian.alipay.com/zhx/m/join.htm"

.field private static final SETTING_CASHIER_VIEW:Ljava/lang/String; = "{\"action\":{\"name\":\"/cashier/view\"}}"

.field public static final SETTING_CHECK_PWD:Ljava/lang/String; = "{\"action\":{\"name\":\"/setting/pwdcheck\"}}"

.field public static final SETTING_DEFAULT_DEDUCT_TYPE:Ljava/lang/String; = "0"

.field public static final SETTING_DEFAULT_DEDUCT_URL:Ljava/lang/String; = "alipays://platformapi/startapp?appId=20000055&launchType=manage"

.field public static final SETTING_FIND_PWD:Ljava/lang/String; = "alipays://platformapi/startApp?appId=20000013&pwdType=ordinaryPassword"

.field private static final SETTING_MAIN_PARAMS:Ljava/lang/String; = "{\"action\":{\"name\":\"/forward/setting\"}}"

.field public static final SETTING_SAVE_ACTION:Ljava/lang/String; = "{\"action\":{\"name\":\"/setting/save\"}}"


# instance fields
.field private mSwitchJfb:Z

.field private mUseJfbCheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->processMainSettingEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mSwitchJfb:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->updateLocalEvent()V

    return-void
.end method

.method private prepareSaveData()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "switch_nopwd"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mSwitchJfb:Z

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "switch_jfb"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nopwd_limit_default"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "channel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "switch_auto"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_4
    return-object v0
.end method

.method private processMainSettingEvent()V
    .locals 5

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mBizId:I

    const/16 v3, 0x10

    const/16 v4, 0x7d0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/b/a/j;-><init>(IIILjava/lang/Object;)V

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x7d1

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->showLocalViewLoading()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "{\"action\":{\"name\":\"/forward/setting\"}}"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-super {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_0
.end method

.method private updateLocalEvent()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "nopwd_item"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "channel_value_item"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$5;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getViewLayoutId()I
    .locals 1

    const-string/jumbo v0, "setting_activity_main"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "use_jfb_check"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    return-void
.end method

.method public onBack()Z
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "{\"action\":{\"name\":\"/cashier/view\"}}"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-super {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveChangeDataBack(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onSaveChangeDataBack(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "status=0101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v0, "switch_jfb"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "switch_jfb"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mSwitchJfb:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mSwitchJfb:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_1
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Z)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "alipay_baoxian_icon"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mLocalView:Landroid/view/View;

    const-string/jumbo v3, "alipay_boaxian_text"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v3, "asi"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mBizId:I

    invoke-static {v3}, Lcom/alipay/android/app/logic/c/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "asi"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "alipay_baoxian_open"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string/jumbo v2, "flybird_baoxian_open_text"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->updateLocalEvent()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->mUseJfbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Z)V

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "alipay_baoxian_close"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string/jumbo v2, "flybird_baoxian_close_text"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
