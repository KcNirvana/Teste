.class Lcom/sdu/didi/uuid/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/uuid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/uuid/a$2;->a:Lcom/sdu/didi/uuid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sdu/didi/uuid/a$2;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->e(Lcom/sdu/didi/uuid/a;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    iget-object v1, p0, Lcom/sdu/didi/uuid/a$2;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->f(Lcom/sdu/didi/uuid/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/sdu/didi/uuid/a$2;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->g(Lcom/sdu/didi/uuid/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge v1, v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sdu/didi/uuid/a$2;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v5}, Lcom/sdu/didi/uuid/a;->g(Lcom/sdu/didi/uuid/a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
