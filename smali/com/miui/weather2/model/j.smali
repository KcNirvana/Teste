.class public Lcom/miui/weather2/model/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/weather2/structures/AqiQualityStationColony;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps2d/a/h;

.field private c:Lcom/amap/api/maps2d/a/h;

.field private d:Lcom/amap/api/maps2d/a/h;

.field private e:Lcom/miui/weather2/model/j$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/weather2/structures/AqiQualityStationColony;
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/model/j;->c:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/j;->d:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/weather2/model/j;->c:Lcom/amap/api/maps2d/a/h;

    iget-object v2, p0, Lcom/miui/weather2/model/j;->d:Lcom/amap/api/maps2d/a/h;

    iget-object v3, p0, Lcom/miui/weather2/model/j;->b:Lcom/amap/api/maps2d/a/h;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/f/a;->a(Landroid/content/Context;Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/j;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/weather2/e/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/weather2/structures/AqiQualityStationColony;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/j;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/j;->c:Lcom/amap/api/maps2d/a/h;

    iput-object p2, p0, Lcom/miui/weather2/model/j;->d:Lcom/amap/api/maps2d/a/h;

    iput-object p3, p0, Lcom/miui/weather2/model/j;->b:Lcom/amap/api/maps2d/a/h;

    return-void
.end method

.method public a(Lcom/miui/weather2/model/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/j;->e:Lcom/miui/weather2/model/j$a;

    return-void
.end method

.method protected a(Lcom/miui/weather2/structures/AqiQualityStationColony;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/j;->e:Lcom/miui/weather2/model/j$a;

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/j$a;->a(Lcom/miui/weather2/structures/AqiQualityStationColony;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/j;->a([Ljava/lang/Void;)Lcom/miui/weather2/structures/AqiQualityStationColony;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/j;->a(Lcom/miui/weather2/structures/AqiQualityStationColony;)V

    return-void
.end method
