.class Lcom/miui/weather2/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:Lcom/miui/weather2/view/AqiQualityFourthPart;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/AqiQualityFourthPart;FDD)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    iput p2, p0, Lcom/miui/weather2/view/b;->a:F

    iput-wide p3, p0, Lcom/miui/weather2/view/b;->b:D

    iput-wide p5, p0, Lcom/miui/weather2/view/b;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Lcom/miui/weather2/view/AqiQualityFourthPart;)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/b;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->b(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/AqiQualityStationColony;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->b(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/AqiQualityStationColony;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getLeftTopLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualityFourthPart;->b(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/AqiQualityStationColony;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getRightBottomLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/tools/n;->a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/j;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/j;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    iget v1, p0, Lcom/miui/weather2/view/b;->a:F

    invoke-static {v0, v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Lcom/miui/weather2/view/AqiQualityFourthPart;F)F

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    new-instance v1, Lcom/miui/weather2/model/j;

    invoke-direct {v1}, Lcom/miui/weather2/model/j;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/model/j;)Lcom/miui/weather2/model/j;

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-virtual {v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/j;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/j;->a(Lcom/miui/weather2/model/j$a;)V

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->h()Lcom/amap/api/maps2d/a/h;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->i()Lcom/amap/api/maps2d/a/h;

    move-result-object v8

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    iget-object v1, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->e(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/weather2/view/b;->b:D

    iget-wide v4, p0, Lcom/miui/weather2/view/b;->c:D

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/structures/CityData;DD)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/miui/weather2/model/j;->a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V

    iget-object v0, p0, Lcom/miui/weather2/view/b;->d:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;

    move-result-object v0

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
