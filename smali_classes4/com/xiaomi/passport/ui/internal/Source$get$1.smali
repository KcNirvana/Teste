.class final Lcom/xiaomi/passport/ui/internal/Source$get$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Source.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/passport/ui/internal/Result<",
        "TV;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "V",
        "it",
        "Lcom/xiaomi/passport/ui/internal/Result;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $fail:Lkotlin/jvm/functions/Function1;

.field final synthetic $success:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/Source$get$1;->$success:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/Source$get$1;->$fail:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/Result;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/Source$get$1;->invoke(Lcom/xiaomi/passport/ui/internal/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/xiaomi/passport/ui/internal/Result;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/Result<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/Result$Success;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/Source$get$1;->$success:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/Result;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/Result$Failure;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/Source$get$1;->$fail:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/Result;->getTr()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
