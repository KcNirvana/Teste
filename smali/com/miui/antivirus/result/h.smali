.class public Lcom/miui/antivirus/result/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static amE:Ljava/util/HashMap;

.field public static final amF:Lcom/miui/securitycenter/Application;

.field static amG:Ljava/util/List;

.field private static final amH:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/result/h;->amF:Lcom/miui/securitycenter/Application;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/h;->amH:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/antivirus/result/h;->amH:Ljava/util/HashMap;

    const-string/jumbo v1, "http://sec-cdn.static.xiaomi.net/secStatic/icon/ziqidongguanli.png"

    const-string/jumbo v2, "assets://img/ziqidongguanli.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/h;->amH:Ljava/util/HashMap;

    const-string/jumbo v1, "https://sec-cdn.static.xiaomi.net/secStatic/proj/xiezai.png"

    const-string/jumbo v2, "assets://img/xiezai.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/miui/antivirus/result/FunctionManager$1;

    invoke-direct {v0}, Lcom/miui/antivirus/result/FunctionManager$1;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/h;->amE:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atA()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    return-object v0
.end method

.method public static atB(I)Z
    .locals 4

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/h;->atD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :sswitch_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/i;->fC(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :cond_1
    return v3

    :sswitch_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/h;->atC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :sswitch_3
    sget-object v0, Lcom/miui/antivirus/result/h;->amE:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x2a -> :sswitch_1
        0x2b -> :sswitch_3
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static atC(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    const-string/jumbo v0, "appsArrayList Number"

    sget-object v1, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/result/h;->amG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static atD(Landroid/content/Context;)Z
    .locals 12

    const-wide/32 v10, 0x927c0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/s;->aQD()Lcom/miui/powercenter/quickoptimize/t;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/miui/securityscan/c;->Ow(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v2, v4, v10

    if-gez v2, :cond_0

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, v3, Lcom/miui/powercenter/quickoptimize/t;->aEx:Z

    if-eqz v2, :cond_1

    iget v2, v3, Lcom/miui/powercenter/quickoptimize/t;->aEy:I

    if-nez v2, :cond_1

    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/antivirus/result/h;->atz(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/miui/powercenter/a;->bfd()I

    move-result v3

    if-ge v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static atE()V
    .locals 3

    sget-object v0, Lcom/miui/antivirus/result/h;->amE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static atF(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/h;->amH:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static atv()Lcom/miui/antivirus/result/DataModel;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/antivirus/result/h;->atx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/miui/antivirus/result/h;->atw()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/miui/antivirus/result/h;->atE()V

    new-instance v2, Lcom/miui/antivirus/result/DataModel;

    invoke-direct {v2}, Lcom/miui/antivirus/result/DataModel;-><init>()V

    const-string/jumbo v3, "******************"

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/DataModel;->atg(Ljava/lang/String;)V

    const-string/jumbo v3, "01"

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/DataModel;->ati(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/DataModel;->ath(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/Function;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Function;->getAction()I

    move-result v5

    invoke-static {v5}, Lcom/miui/antivirus/result/h;->atB(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Function;->clone()Lcom/miui/antivirus/result/Function;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/Function;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Function;->getAction()I

    move-result v5

    invoke-static {v5}, Lcom/miui/antivirus/result/h;->atB(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Function;->clone()Lcom/miui/antivirus/result/Function;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static atw()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static atx()Ljava/util/ArrayList;
    .locals 7

    const v6, 0x7f070753

    const/16 v5, 0x2b

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/miui/antivirus/result/h;->amE:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/result/Function;

    invoke-direct {v0}, Lcom/miui/antivirus/result/Function;-><init>()V

    invoke-virtual {v0, v5}, Lcom/miui/antivirus/result/Function;->atH(I)V

    const v2, 0x7f07060a

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f07075b

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setSummary(Ljava/lang/String;)V

    const v2, 0x7f070755

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/result/Function;->atI(I)V

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/result/Function;->setTemplate(I)V

    const-string/jumbo v2, "drawable://2130837966"

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/miui/antivirus/result/Function;

    invoke-direct {v0}, Lcom/miui/antivirus/result/Function;-><init>()V

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->atH(I)V

    const v2, 0x7f070758

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f070759

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setSummary(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/result/Function;->atI(I)V

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/result/Function;->setTemplate(I)V

    const-string/jumbo v2, "assets://img/ziqidongguanli.png"

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/antivirus/result/Function;

    invoke-direct {v0}, Lcom/miui/antivirus/result/Function;-><init>()V

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->atH(I)V

    const v2, 0x7f070756

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f070757

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setSummary(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/result/Function;->atI(I)V

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/result/Function;->setTemplate(I)V

    const-string/jumbo v2, "assets://img/xiezai.png"

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/antivirus/result/Function;

    invoke-direct {v0}, Lcom/miui/antivirus/result/Function;-><init>()V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->atH(I)V

    const v2, 0x7f070609

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f0706f7

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setSummary(Ljava/lang/String;)V

    const v2, 0x7f070845

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->aty(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/result/Function;->atI(I)V

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/result/Function;->setTemplate(I)V

    const-string/jumbo v2, "drawable://2130837964"

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Function;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static final aty(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/h;->amF:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0, p0}, Lcom/miui/securitycenter/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static atz(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method
