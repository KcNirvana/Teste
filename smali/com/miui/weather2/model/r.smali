.class public Lcom/miui/weather2/model/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/r$b;,
        Lcom/miui/weather2/model/r$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/miui/weather2/ActivityMinuteRain;DDLcom/miui/weather2/structures/CityData;ZZ)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/weather2/model/r$b;-><init>(Lcom/miui/weather2/model/s;)V

    invoke-virtual {v0, p0}, Lcom/miui/weather2/model/r$b;->a(Lcom/miui/weather2/ActivityMinuteRain;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/weather2/model/r$b;->a(DD)V

    invoke-virtual {v0, p5}, Lcom/miui/weather2/model/r$b;->a(Lcom/miui/weather2/structures/CityData;)V

    invoke-virtual {v0, p6}, Lcom/miui/weather2/model/r$b;->a(Z)V

    invoke-virtual {v0, p7}, Lcom/miui/weather2/model/r$b;->b(Z)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/r$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
