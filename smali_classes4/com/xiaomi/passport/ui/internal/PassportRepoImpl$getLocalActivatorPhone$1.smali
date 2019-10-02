.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->getLocalActivatorPhone(Landroid/content/Context;Z)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $useLocalCathe:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;->$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;->$useLocalCathe:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1$future$1;

    invoke-direct {v1}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1$future$1;-><init>()V

    check-cast v1, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getLocalActivatorPhone$1;->$useLocalCathe:Z

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->getLocalActivatorPhone(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;Z)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    throw v0
.end method
