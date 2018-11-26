.class final Lcom/miui/applicationlock/M;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic ajs:Lcom/miui/applicationlock/FirstUseAppLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/M;->ajs:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/M;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 10

    const/4 v1, 0x6

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afH()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/miui/applicationlock/M;->ajs:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-static {v6, v0}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Lcom/miui/applicationlock/utils/c;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v7, v0}, Lcom/miui/applicationlock/utils/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/M;->ajs:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alA(Lcom/miui/applicationlock/FirstUseAppLockActivity;I)I

    new-instance v0, Lcom/miui/applicationlock/N;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/N;-><init>(Lcom/miui/applicationlock/M;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    if-ge v2, v1, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/applicationlock/utils/c;->aed(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    return-object v3
.end method
