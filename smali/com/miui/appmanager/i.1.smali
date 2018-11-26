.class public Lcom/miui/appmanager/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aUc:Landroid/content/ContentResolver;

.field private aUd:Lcom/miui/securityscan/b/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/i;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/i;->aUc:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/appmanager/i;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/i;->aUd:Lcom/miui/securityscan/b/c;

    return-void
.end method


# virtual methods
.method public bme()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/appmanager/i;->aUc:Landroid/content/ContentResolver;

    const-string/jumbo v2, "am_update_app_notify"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bmf(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/appmanager/i;->aUc:Landroid/content/ContentResolver;

    const-string/jumbo v2, "am_update_app_notify"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bmg()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/i;->aUd:Lcom/miui/securityscan/b/c;

    const-string/jumbo v1, "am_ads_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bmh(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/i;->aUd:Lcom/miui/securityscan/b/c;

    const-string/jumbo v1, "am_ads_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Z)Z

    return-void
.end method

.method public bmi()Z
    .locals 6

    const-wide/32 v4, 0x5265c00

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/appmanager/h;->blR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Lcom/miui/appmanager/h;->bmc(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/appmanager/i;->bme()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/miui/securityscan/c;->OJ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/appmanager/h;->blR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {}, Lcom/miui/appmanager/h;->blX()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public bmj()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/appmanager/i;->aUc:Landroid/content/ContentResolver;

    const-string/jumbo v3, "am_show_system_apps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bmk(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/appmanager/i;->aUc:Landroid/content/ContentResolver;

    const-string/jumbo v2, "am_show_system_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
