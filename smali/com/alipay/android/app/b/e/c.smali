.class public Lcom/alipay/android/app/b/e/c;
.super Ljava/lang/Object;
.source "MspSyncSwitchUtil.java"


# static fields
.field private static a:I

.field private static b:Z

.field private static c:I

.field private static d:Z

.field private static e:I

.field private static f:Z

.field private static g:I

.field private static h:Z

.field private static i:I

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/alipay/android/app/b/e/c;->a:I

    sput-boolean v1, Lcom/alipay/android/app/b/e/c;->b:Z

    const/16 v0, 0x64

    sput v0, Lcom/alipay/android/app/b/e/c;->c:I

    sput-boolean v1, Lcom/alipay/android/app/b/e/c;->d:Z

    sput v1, Lcom/alipay/android/app/b/e/c;->e:I

    sput-boolean v1, Lcom/alipay/android/app/b/e/c;->f:Z

    sput v1, Lcom/alipay/android/app/b/e/c;->g:I

    sput-boolean v1, Lcom/alipay/android/app/b/e/c;->h:Z

    sput v1, Lcom/alipay/android/app/b/e/c;->i:I

    sput-boolean v1, Lcom/alipay/android/app/b/e/c;->j:Z

    return-void
.end method

.method public static a()Z
    .locals 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/alipay/android/app/b/e/c;->d:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "app_check_login"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/alipay/android/app/b/e/c;->c:I

    sput-boolean v0, Lcom/alipay/android/app/b/e/c;->d:Z

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sget v2, Lcom/alipay/android/app/b/e/c;->c:I

    if-ge v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/alipay/android/app/b/e/c;->f:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "cashier_sync_degrade"

    const-string/jumbo v3, "pbv3_degrade"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/d/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/alipay/android/app/b/e/c;->e:I

    sput-boolean v0, Lcom/alipay/android/app/b/e/c;->f:Z

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sget v3, Lcom/alipay/android/app/b/e/c;->e:I

    if-ge v2, v3, :cond_1

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    const-string/jumbo v3, "MspSyncSwitchUtil::isPbv3Degrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPbv3Degrade="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alipay/android/app/b/e/c;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static c()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/alipay/android/app/b/e/c;->h:Z

    if-nez v2, :cond_0

    sput-boolean v0, Lcom/alipay/android/app/b/e/c;->h:Z

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "cashier_sync_tpl_manager_degrade"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/alipay/android/app/b/e/c;->g:I

    const-string/jumbo v2, ""

    const-string/jumbo v3, "MspSyncSwitchUtil::isTemplateManagerDegrade"

    const-string/jumbo v4, "initialize from preference"

    invoke-static {v6, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, "MspSyncSwitchUtil::isTemplateManagerDegrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTplManagerDegrade="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alipay/android/app/b/e/c;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sget v3, Lcom/alipay/android/app/b/e/c;->g:I

    if-ge v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static d()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/alipay/android/app/b/e/c;->j:Z

    if-nez v2, :cond_0

    sput-boolean v0, Lcom/alipay/android/app/b/e/c;->j:Z

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "snapshot_feedback_degrade"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/alipay/android/app/b/e/c;->i:I

    const-string/jumbo v2, ""

    const-string/jumbo v3, "MspSyncSwitchUtil::isInitSnapShotFeedBackDegrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initialize from preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alipay/android/app/b/e/c;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, "MspSyncSwitchUtil::isInitSnapShotFeedBackDegrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "degrade="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alipay/android/app/b/e/c;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sget v3, Lcom/alipay/android/app/b/e/c;->i:I

    if-ge v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
