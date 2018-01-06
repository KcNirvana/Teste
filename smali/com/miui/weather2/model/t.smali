.class public Lcom/miui/weather2/model/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/t$b;,
        Lcom/miui/weather2/model/t$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;DDFLcom/miui/weather2/view/RadarCloudImageContainer;)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/weather2/model/t$a;-><init>(Lcom/miui/weather2/model/u;)V

    invoke-static {v0, p0}, Lcom/miui/weather2/model/t$a;->a(Lcom/miui/weather2/model/t$a;Landroid/content/Context;)V

    invoke-static {v0, p5}, Lcom/miui/weather2/model/t$a;->a(Lcom/miui/weather2/model/t$a;F)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/weather2/model/t$a;->a(Lcom/miui/weather2/model/t$a;DD)V

    invoke-static {v0, p6}, Lcom/miui/weather2/model/t$a;->a(Lcom/miui/weather2/model/t$a;Lcom/miui/weather2/view/RadarCloudImageContainer;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/t$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/structures/RadarCloudImageData;)V
    .locals 5

    new-instance v0, Lcom/miui/weather2/model/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/weather2/model/t$b;-><init>(Lcom/miui/weather2/model/u;)V

    invoke-static {v0, p0}, Lcom/miui/weather2/model/t$b;->a(Lcom/miui/weather2/model/t$b;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/miui/weather2/model/t$b;->a(Lcom/miui/weather2/model/t$b;Lcom/miui/weather2/structures/RadarCloudImageData;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/t$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
