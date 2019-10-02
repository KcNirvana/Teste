.class public final Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;
.super Lcom/xiaomi/passport/ui/internal/PassportUIException;
.source "AuthProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;",
        "Lcom/xiaomi/passport/ui/internal/PassportUIException;",
        "snsBindParams",
        "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
        "(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V",
        "getSnsBindParams",
        "()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
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
.field private final snsBindParams:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "snsBindParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportUIException;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;->snsBindParams:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    return-void
.end method


# virtual methods
.method public final getSnsBindParams()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;->snsBindParams:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    return-object v0
.end method
