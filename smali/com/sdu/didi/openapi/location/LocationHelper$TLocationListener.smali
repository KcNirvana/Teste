.class Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/location/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/LocationHelper;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public location(Lcom/sdu/didi/openapi/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$308(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    invoke-virtual {p1}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0, p1}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$402(Lcom/sdu/didi/openapi/location/LocationHelper;Lcom/sdu/didi/openapi/location/Location;)Lcom/sdu/didi/openapi/location/Location;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$400(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->onDestroy()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
