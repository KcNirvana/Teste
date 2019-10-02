.class public Lcom/xiaomi/miglobaladsdk/a/c;
.super Ljava/lang/Object;
.source "ConfigRequestCommon.java"


# static fields
.field private static a:Lcom/xiaomi/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/utils/i;

    sget-object v1, Lcom/xiaomi/utils/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/utils/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/a/c;->a:Lcom/xiaomi/utils/i;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/c;->a:Lcom/xiaomi/utils/i;

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/c;->a:Lcom/xiaomi/utils/i;

    const-string v1, "advertising_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigRequestCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserAgent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
