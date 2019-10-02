.class final Lcom/xiaomi/utils/g$1;
.super Ljava/lang/Object;
.source "NetWorkRequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/utils/g;->a(Ljava/util/concurrent/Executor;Lcom/xiaomi/utils/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/utils/g$c;


# direct methods
.method constructor <init>(Lcom/xiaomi/utils/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/g$1;->a:Lcom/xiaomi/utils/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/utils/g$1;->a:Lcom/xiaomi/utils/g$c;

    invoke-static {v0}, Lcom/xiaomi/utils/g;->a(Lcom/xiaomi/utils/g$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "stacktrace_tag"

    const-string v2, "stackerror:"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
