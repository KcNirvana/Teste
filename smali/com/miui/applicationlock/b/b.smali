.class public Lcom/miui/applicationlock/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajZ(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->akd(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->akb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->akf(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->akc(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/applicationlock/utils/a;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->ake(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static aka(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "privacy_password_bind_xiaomi_account"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "privacy_add_account_md5"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/b/b;->aGW([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "privacy_password_bind_xiaomi_account"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string/jumbo v1, "privacy_add_account_md5"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static akb(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method private static akc(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->aka(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    const-string/jumbo v1, "toggle_private_binding"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/b;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "off_logged_in"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "off_not_logged"

    goto :goto_0
.end method

.method private static akd(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "toggle_private_main"

    invoke-static {p0}, Lcom/miui/applicationlock/b/b;->akb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/b;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ake(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "fingerprint_apply_to_privacy_password"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "toggle_private_finger_mark"

    if-eqz v0, :cond_1

    :goto_1
    int-to-long v0, v1

    invoke-static {v3, v0, v1}, Lcom/miui/applicationlock/b/b;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static akf(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "privacy_password_is_visible_pattern"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "toggle_private_showdrawing"

    if-eqz v0, :cond_1

    :goto_1
    int-to-long v0, v1

    invoke-static {v3, v0, v1}, Lcom/miui/applicationlock/b/b;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.applicationlock"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.applicationlock"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
