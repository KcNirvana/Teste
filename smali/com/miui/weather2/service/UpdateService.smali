.class public Lcom/miui/weather2/service/UpdateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/miui/weather2/service/d;

    invoke-virtual {p0}, Lcom/miui/weather2/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/miui/weather2/service/a;

    invoke-direct {v3, v2}, Lcom/miui/weather2/service/a;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v0

    const/4 v3, 0x1

    new-instance v4, Lcom/miui/weather2/service/e;

    invoke-direct {v4, v2}, Lcom/miui/weather2/service/e;-><init>(Landroid/content/Context;)V

    aput-object v4, v1, v3

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/miui/weather2/service/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/weather2/service/d;->f()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
