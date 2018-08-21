.class public Lcom/miui/personalassistant/services/DiDiService;
.super Ljava/lang/Object;
.source "DiDiService.java"


# static fields
.field private static final DIDI_ID:Ljava/lang/String; = "didi646E4B4A616E777267327573524D3246"

.field private static final DIDI_SECRET:Ljava/lang/String; = "492042b50a215355638730b1b0e09857"

.field private static final TAG:Ljava/lang/String; = "DiDiService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDiDiService(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    const-string/jumbo v1, "didi646E4B4A616E777267327573524D3246"

    const-string/jumbo v2, "492042b50a215355638730b1b0e09857"

    invoke-static {p0, v1, v2}, Lcom/sdu/didi/openapi/DIOpenSDK;->registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DiDiService"

    const-string/jumbo v2, "DiDiService registerApp"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DiDiService"

    const-string/jumbo v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerGuard(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/sdu/didi/openapi/DIOpenSDK;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    const-string/jumbo v1, "DiDiService"

    const-string/jumbo v2, "appId secret ok"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DiDiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/personalassistant/services/DiDiService;->initDiDiService(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method
