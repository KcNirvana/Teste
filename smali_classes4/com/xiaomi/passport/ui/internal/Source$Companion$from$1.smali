.class public final Lcom/xiaomi/passport/ui/internal/Source$Companion$from$1;
.super Lcom/xiaomi/passport/ui/internal/Source;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/Source$Companion;->from(Lkotlin/jvm/functions/Function0;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/ui/internal/Source<",
        "TV;>;"
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
        "com/xiaomi/passport/ui/internal/Source$Companion$from$1",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "(Lkotlin/jvm/functions/Function0;)V",
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
.field final synthetic $func:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/Source$Companion$from$1;->$func:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/Source;-><init>()V

    return-void
.end method


# virtual methods
.method public process()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/Source$Companion$from$1;->$func:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
