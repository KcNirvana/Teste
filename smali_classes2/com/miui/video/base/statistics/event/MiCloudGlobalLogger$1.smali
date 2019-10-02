.class Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;
.super Ljava/lang/Object;
.source "MiCloudGlobalLogger.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->upload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->this$0:Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

    iput-object p2, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->this$0:Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

    invoke-static {p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->access$000(Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload url onFailure : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->val$url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->this$0:Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

    invoke-static {p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->access$000(Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload url onResponse : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;->val$url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
