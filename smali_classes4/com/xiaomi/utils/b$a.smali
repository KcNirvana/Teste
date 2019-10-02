.class Lcom/xiaomi/utils/b$a;
.super Ljava/lang/Object;
.source "BackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/utils/b$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/utils/b$a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "BackgroundThread"

    const-string v3, "IOThread task run start"

    invoke-static {v2, v3}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/utils/b$a;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "BackgroundThread"

    const-string v5, "IOThread task run end"

    invoke-static {v4, v5}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xc8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-string v0, "BackgroundThread"

    const-string v1, "IOThread task spent exceed 200 millis"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
