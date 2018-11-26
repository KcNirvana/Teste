.class final Lcom/miui/permcenter/autostart/i;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/permcenter/autostart/c;
    .locals 14

    const-wide/16 v12, 0x4000

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/g;->SU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pc(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/k;->aIw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12, v13, v10}, Lcom/miui/permcenter/e;->SN(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.greenpoint.android.mc10086.activity"

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v9, 0x3

    if-eq v1, v9, :cond_2

    iget-object v1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pb(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pb(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    :cond_2
    invoke-virtual {v0, v10}, Lcom/miui/permcenter/c;->Sz(Z)V

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Sx()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Sx()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v10}, Lcom/miui/permcenter/c;->SA(Z)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/miui/permcenter/autostart/d;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {v0, v1}, Lcom/miui/permcenter/autostart/d;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0, v3, v5}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pd(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/i;->Ow:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v1, v4, v6}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pd(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/autostart/c;

    invoke-direct {v2}, Lcom/miui/permcenter/autostart/c;-><init>()V

    iput-object v0, v2, Lcom/miui/permcenter/autostart/c;->Oa:Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/miui/permcenter/autostart/c;->Ob:Ljava/util/ArrayList;

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/i;->loadInBackground()Lcom/miui/permcenter/autostart/c;

    move-result-object v0

    return-object v0
.end method
