.class public final Lcom/xiaomi/passport/ui/internal/Source$next$1;
.super Lcom/xiaomi/passport/ui/internal/Source;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/Source;->next(Lkotlin/jvm/functions/Function1;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/ui/internal/Source<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/Source$next$1",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "(Lcom/xiaomi/passport/ui/internal/Source;Lkotlin/jvm/functions/Function1;)V",
        "process",
        "()Ljava/lang/Object;",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $func1:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/Source;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/Source;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/Source$next$1;->this$0:Lcom/xiaomi/passport/ui/internal/Source;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/Source$next$1;->$func1:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/Source;-><init>()V

    return-void
.end method


# virtual methods
.method public process()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/Source$next$1;->$func1:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/Source$next$1;->this$0:Lcom/xiaomi/passport/ui/internal/Source;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/Source;->process()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
