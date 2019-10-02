.class Lcom/xiaomi/passport/utils/SensorHelper$3;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/utils/SensorHelper;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/utils/SensorHelper;

.field final synthetic val$event:Landroid/hardware/SensorEvent;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/SensorHelper$3;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/SensorHelper$3;->val$event:Landroid/hardware/SensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$3;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    new-instance v1, Lcom/xiaomi/passport/utils/SensorHelper$SensorData;

    iget-object v2, p0, Lcom/xiaomi/passport/utils/SensorHelper$3;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    iget-object v3, p0, Lcom/xiaomi/passport/utils/SensorHelper$3;->val$event:Landroid/hardware/SensorEvent;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/passport/utils/SensorHelper$SensorData;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/SensorHelper;->access$300(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$SensorData;)V

    return-void
.end method
