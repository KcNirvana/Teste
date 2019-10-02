.class final Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/Source;->getAsync(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "V",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $observer:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/Source;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/Source;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;->this$0:Lcom/xiaomi/passport/ui/internal/Source;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;->$observer:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;->this$0:Lcom/xiaomi/passport/ui/internal/Source;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/Source;->process()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1$1;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1$1;-><init>(Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1$2;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/passport/ui/internal/Source$getAsync$1$2;-><init>(Lcom/xiaomi/passport/ui/internal/Source$getAsync$1;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
