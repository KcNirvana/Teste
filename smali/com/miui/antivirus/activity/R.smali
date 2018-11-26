.class final Lcom/miui/antivirus/activity/R;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/R;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayY(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayY(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antivirus/i;->aDj(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayY(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/antivirus/utils/a;->aum(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/miui/antivirus/model/i;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v0, v9}, Lcom/miui/antivirus/model/i;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/miui/antivirus/model/i;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v0, v8}, Lcom/miui/antivirus/model/i;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->aza(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;I)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayZ(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;I)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcom/miui/antivirus/model/h;

    invoke-direct {v1}, Lcom/miui/antivirus/model/h;-><init>()V

    sget-object v2, Lcom/miui/antivirus/model/HeaderModel$HeaderType;->alY:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/h;->arK(Lcom/miui/antivirus/model/HeaderModel$HeaderType;)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-virtual {v2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0c0029

    invoke-virtual {v2, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/h;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/model/h;->arL(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lcom/miui/antivirus/model/h;

    invoke-direct {v1}, Lcom/miui/antivirus/model/h;-><init>()V

    sget-object v2, Lcom/miui/antivirus/model/HeaderModel$HeaderType;->alZ:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/h;->arK(Lcom/miui/antivirus/model/HeaderModel$HeaderType;)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/R;->atC:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;

    invoke-virtual {v2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0c002a

    invoke-virtual {v2, v6, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/h;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/antivirus/model/h;->arL(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
