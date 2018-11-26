.class final Lcom/miui/applicationlock/I;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/I;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afH()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/applicationlock/utils/j;

    invoke-direct {v3}, Lcom/miui/applicationlock/utils/j;-><init>()V

    new-instance v4, Lcom/miui/applicationlock/utils/j;

    invoke-direct {v4}, Lcom/miui/applicationlock/utils/j;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v9, v8}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/miui/applicationlock/utils/c;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v12

    invoke-direct {v10, v9, v11, v8, v12}, Lcom/miui/applicationlock/utils/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v9}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alg(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v9

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/miui/applicationlock/utils/c;->aed(Z)V

    iget-object v9, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v9}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alg(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v9

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    invoke-virtual {v9, v8, v0}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/miui/applicationlock/utils/c;->aee(Z)V

    invoke-virtual {v10, v13}, Lcom/miui/applicationlock/utils/c;->aef(Z)V

    invoke-virtual {v10}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akS(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "zh"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v14}, Lcom/miui/applicationlock/utils/c;->aef(Z)V

    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0, v6}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->all(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akW(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v14, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akS(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "zh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akV(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    invoke-virtual {v3, v1}, Lcom/miui/applicationlock/utils/j;->aeP(Ljava/util/List;)V

    sget-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abr:Lcom/miui/applicationlock/utils/HeaderType;

    invoke-virtual {v3, v0}, Lcom/miui/applicationlock/utils/j;->aeQ(Lcom/miui/applicationlock/utils/HeaderType;)V

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v7, 0x7f0c0042

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v6, v14, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v13

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/applicationlock/utils/j;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v14, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akS(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akU(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v4, v2}, Lcom/miui/applicationlock/utils/j;->aeP(Ljava/util/List;)V

    sget-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abs:Lcom/miui/applicationlock/utils/HeaderType;

    invoke-virtual {v4, v0}, Lcom/miui/applicationlock/utils/j;->aeQ(Lcom/miui/applicationlock/utils/HeaderType;)V

    iget-object v0, p0, Lcom/miui/applicationlock/I;->ajo:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v3, 0x7f0c0043

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/applicationlock/utils/j;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v5
.end method
