.class final Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger$1;
.super Ljava/lang/Object;
.source "BaseHttpInterceptor.java"

# interfaces
.implements Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/common/internal/AppConfig;->isAlphaMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/base/common/internal/AppConfig;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/miui/video/base/common/net/config/NetConfigHolder;->getInstance()Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;->enableLog()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "HttpIntercepter"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
