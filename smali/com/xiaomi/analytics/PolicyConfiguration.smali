.class public Lcom/xiaomi/analytics/PolicyConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private boQ:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bMW(Lcom/xiaomi/analytics/internal/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->boQ:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->boQ:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "privacy_policy"

    const-string/jumbo v1, "privacy_no"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "privacy_policy"

    const-string/jumbo v1, "privacy_user"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/xiaomi/analytics/internal/a/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/PolicyConfiguration;->bMW(Lcom/xiaomi/analytics/internal/a/a;)V

    :cond_0
    return-void
.end method

.method public setPrivacy(Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;)Lcom/xiaomi/analytics/PolicyConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->boQ:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object p0
.end method
