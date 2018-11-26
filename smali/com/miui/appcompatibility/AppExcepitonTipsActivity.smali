.class public Lcom/miui/appcompatibility/AppExcepitonTipsActivity;
.super Lmiui/app/AlertActivity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private baA:Ljava/lang/String;

.field private baB:Ljava/lang/String;

.field private baC:Landroid/view/View;

.field private baD:Ljava/lang/String;

.field private baE:Landroid/widget/TextView;

.field private baz:Ljava/lang/String;

.field private mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    const-string/jumbo v0, "\u8be5\u5e94\u7528"

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baz:Ljava/lang/String;

    const-string/jumbo v0, "com.miui.appcompatibility.LaunchDialog.appstore"

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    return-void
.end method

.method private bxe()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "app_compatibility"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "AppExcepitonTipsActivity"

    const-string/jumbo v1, "dataList=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "lauch"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "launch"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baA:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "store"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "store"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v3
.end method

.method static synthetic bxf(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bxg(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bxh(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bxi(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bxj(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bxk(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baE:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bxl(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bxm(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->bxe()Z

    move-result v0

    return v0
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/appcompatibility/f;->bxb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0708dc

    invoke-virtual {p0, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baA:Ljava/lang/String;

    const v0, 0x7f0708dd

    invoke-virtual {p0, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baB:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baB:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baz:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baA:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v1, "\u7ee7\u7eed\u8fd0\u884c"

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v1, "\u5173\u95ed"

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v1, "\u5e94\u7528\u5f02\u5e38\u63d0\u793a"

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baC:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baC:Landroid/view/View;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baE:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baE:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baC:Landroid/view/View;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/miui/appcompatibility/k;

    invoke-direct {v1, p0}, Lcom/miui/appcompatibility/k;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/miui/appcompatibility/l;

    invoke-direct {v1, p0}, Lcom/miui/appcompatibility/l;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appcompatibility/m;

    invoke-direct {v0, p0}, Lcom/miui/appcompatibility/m;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appcompatibility/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->setupAlert()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baB:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baD:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v1, "\u4ecd\u7136\u5b89\u88c5"

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v1, "\u5173\u95ed"

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lmiui/app/AlertActivity;->onBackPressed()V

    const-string/jumbo v0, "module_click"

    const-string/jumbo v1, "back"

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/e;->bwY(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-virtual {p0, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->setTheme(I)V

    invoke-direct {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->initView()V

    const-string/jumbo v0, "module_show"

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->baz:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/e;->bwY(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
