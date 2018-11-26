.class public Lcom/miui/appmanager/model/q;
.super Lcom/miui/appmanager/model/f;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final aQx:Ljava/util/HashMap;


# instance fields
.field private aQA:Landroid/view/View;

.field private aQB:Landroid/view/View;

.field private aQC:Landroid/widget/TextView;

.field private aQD:Landroid/view/View;

.field private aQy:Landroid/view/View;

.field private aQz:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/appmanager/model/q;->aQx:Ljava/util/HashMap;

    sget-object v3, Lcom/miui/appmanager/model/q;->aQx:Ljava/util/HashMap;

    const v0, 0x7f0a00f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/miui/appmanager/model/r;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.cleanmaster"

    :goto_0
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.miui.optimizecenter.deepclean.installedapp.InstalledAppsActivity"

    :goto_1
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    :goto_2
    const-string/jumbo v6, "uninstall"

    invoke-direct {v5, v0, v1, v2, v6}, Lcom/miui/appmanager/model/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/appmanager/model/q;->aQx:Ljava/util/HashMap;

    const v1, 0x7f0a00fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/appmanager/model/r;

    const-string/jumbo v3, "com.miui.securitycore"

    const-string/jumbo v4, "com.miui.xspace.ui.activity.XSpaceSettingActivity"

    const-string/jumbo v5, "miui.intent.action.XSPACE_SETTING"

    const-string/jumbo v6, "replica_app"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/appmanager/model/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/appmanager/model/q;->aQx:Ljava/util/HashMap;

    const v1, 0x7f0a00fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/appmanager/model/r;

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.permcenter.MainAcitivty"

    const-string/jumbo v5, "miui.intent.action.LICENSE_MANAGER"

    const-string/jumbo v6, "permission"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/appmanager/model/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string/jumbo v0, "com.xiaomi.market"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.xiaomi.market.ui.LocalAppsActivity"

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    const v0, 0x7f0a00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    const v0, 0x7f0a00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQB:Landroid/view/View;

    const v0, 0x7f0a00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQA:Landroid/view/View;

    const v0, 0x7f0a00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQy:Landroid/view/View;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    const v4, 0x7f0a00f7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQz:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    const v4, 0x7f0a00f8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/miui/appmanager/model/p;->-get0()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v4, "com.xiaomi.mipicks"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/appmanager/model/q;->aQz:Landroid/view/View;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQA:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQy:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQA:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private bhS(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMMainTopCardModel"

    const-string/jumbo v2, "start Activity error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/p;

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQz:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/p;->bhQ(Lcom/miui/appmanager/model/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQz:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/appmanager/model/p;->bhQ(Lcom/miui/appmanager/model/p;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/miui/appmanager/model/p;->bhR(Lcom/miui/appmanager/model/p;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQD:Landroid/view/View;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "back"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mimarket://update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    const v1, 0x7f070712

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->aQz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/h;->bma(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/miui/appmanager/h;->bmc(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/appmanager/f;->aTw:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v0, "update"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "com.xiaomi.market.UPDATE_APP_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/appmanager/model/q;->aQx:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/r;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/miui/appmanager/model/r;->aQF:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/miui/appmanager/model/r;->aQF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v2, p0, Lcom/miui/appmanager/model/q;->aQB:Landroid/view/View;

    if-ne p1, v2, :cond_5

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/miui/appmanager/model/q;->bhS(Landroid/content/Intent;)V

    :goto_3
    iget-object v0, v0, Lcom/miui/appmanager/model/r;->aQE:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/miui/appmanager/model/r;->aQG:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/appmanager/model/r;->aQH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/appmanager/model/q;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/miui/appmanager/model/q;->aQB:Landroid/view/View;

    if-ne p1, v2, :cond_6

    const-string/jumbo v2, "back"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    invoke-direct {p0, v1}, Lcom/miui/appmanager/model/q;->bhS(Landroid/content/Intent;)V

    goto :goto_3
.end method
