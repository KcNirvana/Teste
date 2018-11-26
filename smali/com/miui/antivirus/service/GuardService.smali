.class public Lcom/miui/antivirus/service/GuardService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public auS:Lcom/miui/antivirus/c;

.field private auT:Ljava/lang/String;

.field private auU:Lcom/miui/guardprovider/a;

.field private auV:Lcom/miui/antivirus/service/c;

.field private auW:Landroid/view/inputmethod/InputMethodManager;

.field private auX:Z

.field private auY:Z

.field private auZ:Lmiui/process/IActivityChangeListener$Stub;

.field private ava:Lcom/miui/antivirus/a;

.field private avb:Ljava/util/ArrayList;

.field private avc:I

.field private avd:I

.field private ave:J

.field private mIsScanning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/antivirus/service/i;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/i;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auZ:Lmiui/process/IActivityChangeListener$Stub;

    new-instance v0, Lcom/miui/antivirus/service/j;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/j;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auS:Lcom/miui/antivirus/c;

    iput-boolean v1, p0, Lcom/miui/antivirus/service/GuardService;->mIsScanning:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/service/GuardService;->auY:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/service/GuardService;->auX:Z

    iput v1, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    iput v1, p0, Lcom/miui/antivirus/service/GuardService;->avc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/service/GuardService;->ave:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->avb:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/miui/antivirus/service/GuardService;->auT:Ljava/lang/String;

    new-instance v0, Lcom/miui/antivirus/service/c;

    invoke-direct {v0, p0, v2}, Lcom/miui/antivirus/service/c;-><init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/c;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    return-void
.end method

.method static synthetic aBA(Lcom/miui/antivirus/service/GuardService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    return p1
.end method

.method static synthetic aBB(Lcom/miui/antivirus/service/GuardService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/service/GuardService;->aBk(Z)V

    return-void
.end method

.method static synthetic aBC(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBl()V

    return-void
.end method

.method private aBi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/antivirus/utils/a;->aue(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private aBj()V
    .locals 9

    const/4 v8, 0x1

    const-wide/32 v6, 0x2000000

    invoke-static {p0, v6, v7}, Lcom/miui/permcenter/e;->SE(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v6, v7, v8, v3}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->avb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aBk(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->auY:Z

    if-eqz p1, :cond_1

    const-string/jumbo v0, "GuardService"

    const-string/jumbo v1, "\u8fdb\u5165\u652f\u4ed8\u73af\u5883!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBo()V

    invoke-static {}, Lcom/miui/antivirus/i;->aDw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBq()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBj()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GuardService"

    const-string/jumbo v1, "\u9000\u51fa\u652f\u4ed8\u73af\u5883\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/miui/antivirus/utils/a;->aus(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/miui/antivirus/i;->aDw()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBn()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->aBm()V

    goto :goto_0
.end method

.method private aBl()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "GuardService"

    const-string/jumbo v1, "onScanFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/miui/antivirus/service/GuardService;->mIsScanning:Z

    iput v2, p0, Lcom/miui/antivirus/service/GuardService;->avc:I

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azJ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azK(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->auY:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    if-lez v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/miui/antivirus/utils/a;->aus(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/antivirus/service/c;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/DialogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.safepay.SHOW_WARNING_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_risk_priority"

    iget v2, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/service/GuardService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v0, "GuardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "background security scan: RiskPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->auX:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private aBm()V
    .locals 8

    const-wide/32 v6, 0x2000000

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->avb:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/permcenter/e;->SI(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-virtual {v1, v6, v7, v0, v3}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->avb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private aBn()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auT:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/service/GuardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService;->auT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private aBo()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->mIsScanning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auU:Lcom/miui/guardprovider/a;

    new-instance v1, Lcom/miui/antivirus/service/k;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/service/k;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqi(Lcom/miui/guardprovider/b;)V

    :cond_1
    return-void
.end method

.method private aBp(Z)V
    .locals 4

    const/4 v1, 0x3

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/service/c;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/service/c;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/antivirus/service/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private aBq()V
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/antivirus/service/GuardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "default_input_method"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antivirus/service/GuardService;->auT:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auW:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/miui/antivirus/service/GuardService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v2}, Lcom/miui/antivirus/service/GuardService;->aBi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/service/GuardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic aBr(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/guardprovider/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auU:Lcom/miui/guardprovider/a;

    return-object v0
.end method

.method static synthetic aBs(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auV:Lcom/miui/antivirus/service/c;

    return-object v0
.end method

.method static synthetic aBt(Lcom/miui/antivirus/service/GuardService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->mIsScanning:Z

    return v0
.end method

.method static synthetic aBu(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->ava:Lcom/miui/antivirus/a;

    return-object v0
.end method

.method static synthetic aBv(Lcom/miui/antivirus/service/GuardService;)I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avc:I

    return v0
.end method

.method static synthetic aBw(Lcom/miui/antivirus/service/GuardService;)I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->avd:I

    return v0
.end method

.method static synthetic aBx(Lcom/miui/antivirus/service/GuardService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->auX:Z

    return p1
.end method

.method static synthetic aBy(Lcom/miui/antivirus/service/GuardService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->mIsScanning:Z

    return p1
.end method

.method static synthetic aBz(Lcom/miui/antivirus/service/GuardService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/service/GuardService;->avc:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/miui/antivirus/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->ava:Lcom/miui/antivirus/a;

    invoke-static {p0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auU:Lcom/miui/guardprovider/a;

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/service/GuardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auW:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "action_start_wifi_scan_task"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "build_wifi_cache_immediately"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/service/GuardService;->aBp(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "action_register_foreground_notification"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/antivirus/i;->aDj(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/antivirus/i;->aDC(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService;->auZ:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v0, v1, v2}, Lmiui/process/ProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDD(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "action_unregister_foreground_notification"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->auZ:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V

    invoke-static {v2}, Lcom/miui/antivirus/i;->aDD(Z)V

    goto :goto_0
.end method
