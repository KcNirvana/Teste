.class public final Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1;
.super Lcom/xiaomi/passport/ui/internal/BaseUiListener;
.source "AuthSnsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1",
        "Lcom/xiaomi/passport/ui/internal/BaseUiListener;",
        "(Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;Landroid/app/Activity;Landroid/app/Activity;)V",
        "onComplete",
        "",
        "reuslt",
        "",
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

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1;->this$0:Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/xiaomi/passport/ui/internal/BaseUiListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1;->this$0:Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider$onActivityResult$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-string v2, "accessToken"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/QQSSOAuthProvider;->storeSnsToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
