.class public Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;
.super Ljava/lang/Object;
.source "AdReportHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static report(Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->isAdEnableInEURegion()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/miglobaladsdk/report/c;-><init>(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->a()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static reportCustomPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/utils/Commons;->obtainTriggerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    const-string v2, "PAGE_VIEW"

    invoke-virtual {v1, v2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->l(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->m(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    :cond_0
    return-void
.end method

.method public static reportDislike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/utils/Commons;->obtainTriggerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    const-string v2, "DISLIKE"

    invoke-virtual {v1, v2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->l(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->m(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    :cond_0
    return-void
.end method

.method public static reportPV(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/utils/Commons;->obtainTriggerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    const-string v2, "PAGE_VIEW"

    invoke-virtual {v1, v2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    :cond_0
    return-void
.end method
