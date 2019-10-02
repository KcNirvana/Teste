.class final Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/AuthProvider;->signInAndStoreAccount(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "it",
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

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/AuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/AuthProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;->this$0:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;->this$0:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider;->access$storePassToken(Lcom/xiaomi/passport/ui/internal/AuthProvider;Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;->invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method
