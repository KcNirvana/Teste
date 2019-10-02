.class Lcom/xiaomi/passport/utils/SensorHelper$2;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/utils/SensorHelper;->collectSensorData(Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/utils/SensorHelper;

.field final synthetic val$listener:Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/SensorHelper$2;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/SensorHelper$2;->val$listener:Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$2;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$100(Lcom/xiaomi/passport/utils/SensorHelper;)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$2;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$200(Lcom/xiaomi/passport/utils/SensorHelper;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/SensorHelper$2;->val$listener:Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;->onFinished(Ljava/lang/String;)V

    return-void
.end method
