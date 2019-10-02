.class public final Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1;
.super Ljava/lang/Object;
.source "AuthSnsProvider.kt"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;->handleWxIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthSnsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthSnsProvider.kt\ncom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1\n*L\n1#1,425:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1",
        "Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;",
        "(Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;Landroid/app/Activity;)V",
        "onReq",
        "",
        "p0",
        "Lcom/tencent/mm/opensdk/modelbase/BaseReq;",
        "onResp",
        "resp",
        "Lcom/tencent/mm/opensdk/modelbase/BaseResp;",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1;->this$0:Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 2
    .param p1    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3
    .param p1    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1;->this$0:Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider$handleWxIntent$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    const-string v2, "resp.code"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/WeChatAuthProvider;->storeSnsCode(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
