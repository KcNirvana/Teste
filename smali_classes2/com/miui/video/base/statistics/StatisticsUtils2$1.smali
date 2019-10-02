.class Lcom/miui/video/base/statistics/StatisticsUtils2$1;
.super Landroid/os/Handler;
.source "StatisticsUtils2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/statistics/StatisticsUtils2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/statistics/StatisticsUtils2;


# direct methods
.method constructor <init>(Lcom/miui/video/base/statistics/StatisticsUtils2;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsUtils2$1;->this$0:Lcom/miui/video/base/statistics/StatisticsUtils2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/video/base/statistics/StatisticsEntity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getEventKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsUtils2$1;->this$0:Lcom/miui/video/base/statistics/StatisticsUtils2;

    invoke-static {v0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->access$000(Lcom/miui/video/base/statistics/StatisticsUtils2;Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    :cond_0
    return-void
.end method
