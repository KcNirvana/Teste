.class final Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1$1;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;->run()V
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
        "T",
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
.field final synthetic $t:Ljava/lang/Object;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1$1;->this$0:Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1$1;->$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1$1;->this$0:Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/WorkThread$doInWorkThread$1$1;->$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
