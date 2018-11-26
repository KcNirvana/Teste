.class public Lcom/miui/powercenter/deepsave/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aNq:Lcom/miui/powercenter/a/i;

.field private aNr:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "pc_sp_data_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNr:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/miui/powercenter/a/i;

    const-string/jumbo v1, "layout_data"

    invoke-direct {v0, p1, v1}, Lcom/miui/powercenter/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNq:Lcom/miui/powercenter/a/i;

    return-void
.end method


# virtual methods
.method public aZJ()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNr:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "init_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aZK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNq:Lcom/miui/powercenter/a/i;

    invoke-virtual {v0}, Lcom/miui/powercenter/a/i;->bbX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aZL(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "init_success"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public aZM(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/b;->aNq:Lcom/miui/powercenter/a/i;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/a/i;->bbW(Ljava/lang/String;)Z

    return-void
.end method
